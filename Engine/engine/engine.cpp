
#include "Common/core/err.h"
#include "Common/core/out.h"
#include "Common/util/string.h"
#include "Common/platform/file.h"
#include "Common/platform/path.h"
#include "Engine/engine/engine.h"
#include "Engine/engine/engine_setup.h"
#include "Engine/util/inifile.h"

// FIXME! this should not be used like that
#define RETURN_CONTINUE 1

#ifdef NO_MP3_PLAYER
#define SPECIAL_VERSION "NMP"
#else
#define SPECIAL_VERSION ""
#endif

// Version and build numbers
#define AC_VERSION_TEXT "3.21 "
#define ACI_VERSION_TEXT "3.21.1115"SPECIAL_VERSION
// this needs to be updated if the "play" struct changes
#define LOWEST_SGVER_COMPAT "3.20.1103"SPECIAL_VERSION

namespace AGS
{
namespace Engine
{
namespace Core
{

// Namespace aliases
namespace Path = AGS::Common::Platform::Path;
namespace Out  = AGS::Common::Core::Out; 

// Using-declarations
using AGS::Common::Core::CErrorHandle;
using AGS::Common::Platform::CFile;
using AGS::Engine::Util::CINIFile;

CAGSEngine *CAGSEngine::_theEngine = NULL;

HErr CAGSEngine::ConstructInstance()
{
    if (_theEngine)
    {
        Out::Warn("WTF?? engine cannot be created for the second time!");
    }
    else
    {
        _theEngine = new CAGSEngine();
    }

    return CErrorHandle::Nil();
}

CAGSEngine *CAGSEngine::GetInstance()
{
    return _theEngine;
}

CString CAGSEngine::GetEngineVersion() const
{
    return CString(ACI_VERSION_TEXT);
}

void CAGSEngine::SetEIP(int32 eip)
{
    _eip = eip;
}

int32 CAGSEngine::GetEIP() const
{
    return _eip;
}

CEngineSetup *CAGSEngine::GetSetup() const
{
    return _theSetup;
}

HErr CAGSEngine::ReadConfigFile(const CString &file_name) {

    Out::Notify("Reading config file");
    SetEIP(-200);

    // Try current directory for config first; else try exe dir
    _configFileDefName = "acsetup.cfg";
    _configFileName = _configFileDefName;

    CFile *f = CFile::Open(_configFileName, "rb");
    
    if (f == NULL) {

        CString conf_file = file_name;        
        conf_file = Path::FixFileName(conf_file);

        CINIFile::getdirec(_configFileName, &conf_file);
        //    printf("Using config: '%s'\n",conffilebuf);
        _configFileName = conf_file;
    }
    else {
        delete f;

        // put the full path, or it gets written back to the Windows folder
        _configFileName = Path::GetCurrentDirectory();
        _configFileName.AppendSz("\\acsetup.cfg");
        _configFileName = Path::FixFileName(_configFileName);
    }

    // set default dir if no config file
    _theSetup->DataFilesDir = ".";
    _theSetup->Translation = NULL;
    _theSetup->MainDataFilename = "ac2game.dat";
#ifdef WINDOWS_VERSION
    _theSetup->Digicard = DIGI_DIRECTAMX(0);
#endif

    // Don't read in the standard config file if disabled.
    if (_ignoreConfigFile)
    {
        OverrideSetup();
        return CErrorHandle::Nil();
    }

    CINIFile *ini_file = CINIFile::Open(_configFileName, "r");

    if (ini_file != NULL) {
        
        _theSetup->ReadCFG(ini_file);
    }

    if (_theSetup->GfxDriverID.IsEmpty())
        _theSetup->GfxDriverID = "DX5";

    return CErrorHandle::Nil();
}

int CAGSEngine::engine_init_allegro()
{
#ifdef ______NOT_NOW
    Out::Notify("Initializing allegro");

    SetEIP(-199);
    // Initialize allegro
#ifdef WINDOWS_VERSION
    if (install_allegro(SYSTEM_AUTODETECT,&myerrno,atexit)) {
        platform->DisplayAlert("Unable to initialize graphics subsystem. Make sure you have DirectX 5 or above installed.");
#else
    if (install_allegro(SYSTEM_AUTODETECT, &myerrno, atexit)) {
        platform->DisplayAlert("Unknown error initializing graphics subsystem.");
#endif
        return EXIT_NORMAL;
    }
#endif
    return RETURN_CONTINUE;
}

void CAGSEngine::winclosehook() {
#ifdef ______NOT_NOW
  want_exit = 1;
  abort_engine = 1;
  check_dynamic_sprites_at_exit = 0;
/*  while (want_exit == 1)
    yield_timeslice();
  / *if (want_quit == 0)
    want_quit = 1;
  else* / quit("|game aborted");
*/
#endif
}

void CAGSEngine::engine_setup_window()
{
#ifdef ______NOT_NOW
    Out::Notify("Setting up window");

    SetEIP(-198);
#if (ALLEGRO_DATE > 19990103)
    set_window_title("Adventure Game Studio");
#if (ALLEGRO_DATE > 20021115)
    set_close_button_callback (winclosehook);
#else
    set_window_close_hook (winclosehook);
#endif

    SetEIP(-197);
#endif

    platform->SetGameWindowIcon();
#endif
}

int CAGSEngine::engine_check_run_setup(int argc,char*argv[])
{
#ifdef ______NOT_NOW
#if !defined(LINUX_VERSION) && !defined(MAC_VERSION)
    // check if Setup needs to be run instead
    if (argc>1) {
        if (stricmp(argv[1],"--setup")==0) { 
            Out::Notify("Running Setup");

            if (!platform->RunSetup())
                return EXIT_NORMAL;

#ifndef WINDOWS_VERSION
#define _spawnl spawnl
#define _P_OVERLAY P_OVERLAY
#endif
            // Just re-reading the config file seems to cause a caching
            // problem on Win9x, so let's restart the process.
            allegro_exit();
            char quotedpath[255];
            sprintf (quotedpath, "\"%s\"", argv[0]);
            _spawnl (_P_OVERLAY, argv[0], quotedpath, NULL);
            //read_config_file(argv[0]);
        }
    }
#endif
#endif

    return RETURN_CONTINUE;
}

void CAGSEngine::engine_force_window()
{
#ifdef ______NOT_NOW
    // Force to run in a window, override the config file
    if (force_window == 1)
        usetup.windowed = 1;
    else if (force_window == 2)
        usetup.windowed = 0;
#endif
}

int CAGSEngine::engine_init_game_data_external(int argc,char*argv[])
{
#ifdef ______NOT_NOW
    game_file_name = ci_find_file(usetup.data_files_dir, usetup.main_data_filename);

#if !defined(WINDOWS_VERSION) && !defined(PSP_VERSION) && !defined(ANDROID_VERSION) && !defined(IOS_VERSION)
    // Search the exe files for the game data
    if ((game_file_name == NULL) || (access(game_file_name, F_OK) != 0))
    {
        DIR* fd = NULL;
        struct dirent* entry = NULL;
        version_info_t version_info;

        if ((fd = opendir(".")))
        {
            while ((entry = readdir(fd)))
            {
                // Exclude the setup program
                if (stricmp(entry->d_name, "winsetup.exe") == 0)
                    continue;

                // Filename must be >= 4 chars long
                int length = strlen(entry->d_name);
                if (length < 4)
                    continue;

                if (stricmp(&(entry->d_name[length - 4]), ".exe") == 0)
                {
                    if (!getVersionInformation(entry->d_name, &version_info))
                        continue;
                    if (strcmp(version_info.internal_name, "acwin") == 0)
                    {
                        game_file_name = (char*)malloc(strlen(entry->d_name) + 1);
                        strcpy(game_file_name, entry->d_name);
                        break;
                    }
                }
            }
            closedir(fd);
        }
    }
#endif

    errcod=csetlib(game_file_name,"");
    if (errcod) {
        //sprintf(gamefilenamebuf,"%s\\ac2game.ags",usetup.data_files_dir);
        free(game_file_name);
        game_file_name = ci_find_file(usetup.data_files_dir, "ac2game.ags");

        errcod = csetlib(game_file_name,"");
    }
#endif

    return RETURN_CONTINUE;
}

int CAGSEngine::engine_init_game_data_internal(int argc,char*argv[])
{
#ifdef ______NOT_NOW
    usetup.main_data_filename = get_filename(game_file_name);

    if (((strchr(game_file_name, '/') != NULL) ||
        (strchr(game_file_name, '\\') != NULL)) &&
        (stricmp(usetup.data_files_dir, ".") == 0)) {
            // there is a path in the game file name (and the user
            // has not specified another one)
            // save the path, so that it can load the VOX files, etc
            usetup.data_files_dir = (char*)malloc(strlen(game_file_name) + 1);
            strcpy(usetup.data_files_dir, game_file_name);

            if (strrchr(usetup.data_files_dir, '/') != NULL)
                strrchr(usetup.data_files_dir, '/')[0] = 0;
            else if (strrchr(usetup.data_files_dir, '\\') != NULL)
                strrchr(usetup.data_files_dir, '\\')[0] = 0;
            else {
                platform->DisplayAlert("Error processing game file name: slash but no slash");
                return EXIT_NORMAL;
            }
    }
#endif

    return RETURN_CONTINUE;
}

void CAGSEngine::initialise_game_file_name()
{
#ifdef ______NOT_NOW
#ifdef WINDOWS_VERSION
    WCHAR buffer[MAX_PATH];
    LPCWSTR dataFilePath = wArgv[datafile_argv];
    // Hack for Windows in case there are unicode chars in the path.
    // The normal argv[] array has ????? instead of the unicode chars
    // and fails, so instead we manually get the short file name, which
    // is always using ANSI chars.
    if (wcschr(dataFilePath, '\\') == NULL)
    {
        GetCurrentDirectoryW(MAX_PATH, buffer);
        wcscat(buffer, L"\\");
        wcscat(buffer, dataFilePath);
        dataFilePath = &buffer[0];
    }
    if (GetShortPathNameW(dataFilePath, directoryPathBuffer, MAX_PATH) == 0)
    {
        platform->DisplayAlert("Unable to determine startup path: GetShortPathNameW failed. The specified game file might be missing.");
        game_file_name = NULL;
        return;
    }
    game_file_name = (char*)malloc(MAX_PATH);
    WideCharToMultiByte(CP_ACP, 0, directoryPathBuffer, -1, game_file_name, MAX_PATH, NULL, NULL);
#elif defined(PSP_VERSION) || defined(ANDROID_VERSION) || defined(IOS_VERSION)
    game_file_name = psp_game_file_name;
#else
    game_file_name = (char*)malloc(MAX_PATH);
    strcpy(game_file_name, get_filename(global_argv[datafile_argv]));
#endif
#endif
}

int CAGSEngine::engine_init_game_data(int argc,char*argv[])
{
#ifdef ______NOT_NOW
    Out::Notify("Initializing game data");

    // initialize the data file
    initialise_game_file_name();
    if (game_file_name == NULL) return EXIT_NORMAL;

    errcod = csetlib(game_file_name,"");  // assume it's appended to exe

    SetEIP(-194);
    //  char gamefilenamebuf[200];

    int init_res = RETURN_CONTINUE;

    if ((errcod!=0) && (change_to_game_dir == 0)) {
        // it's not, so look for the file
        init_res = engine_init_game_data_external(argc, argv);
    }
    else {
        // set the data filename to the EXE name
        int res = engine_init_game_data_internal(argc, argv);
    }

    if (init_res != RETURN_CONTINUE) {
        return init_res;
    }

    SetEIP(-193);

    if (errcod!=0) {  // there's a problem
        if (errcod==-1) {  // file not found
            char emsg[STD_BUFFER_SIZE];
            sprintf (emsg,
                "You must create and save a game first in the AGS Editor before you can use "
                "this engine.\n\n"
                "If you have just downloaded AGS, you are probably running the wrong executable.\n"
                "Run AGSEditor.exe to launch the editor.\n\n"
                "(Unable to find '%s')\n", argv[datafile_argv]);
            platform->DisplayAlert(emsg);
        }
        else if (errcod==-4)
            platform->DisplayAlert("ERROR: Too many files in data file.");
        else platform->DisplayAlert("ERROR: The file is corrupt. Make sure you have the correct version of the\n"
            "editor, and that this really is an AGS game.\n");
        return EXIT_NORMAL;
    }
#endif

    return RETURN_CONTINUE;
}

void CAGSEngine::engine_init_fonts()
{
#ifdef ______NOT_NOW
    Out::Notify("Initializing TTF renderer");

    init_font_renderer();
#endif
}

int CAGSEngine::engine_init_mouse()
{
#ifdef ______NOT_NOW
    Out::Notify("Initializing mouse");

#ifdef _DEBUG
    // Quantify fails with the mouse for some reason
    minstalled();
#else
    if (minstalled()==0) {
        platform->DisplayAlert(platform->GetNoMouseErrorString());
        return EXIT_NORMAL;
    }
#endif // DEBUG
#endif

	return RETURN_CONTINUE;
}

int CAGSEngine::engine_check_memory()
{
#ifdef ______NOT_NOW
    Out::Notify("Checking memory");

    char*memcheck=(char*)malloc(4000000);
    if (memcheck==NULL) {
        platform->DisplayAlert("There is not enough memory available to run this game. You need 4 Mb free\n"
            "extended memory to run the game.\n"
            "If you are running from Windows, check the 'DPMI memory' setting on the DOS box\n"
            "properties.\n");
        return EXIT_NORMAL;
    }
    free(memcheck);
    unlink (replayTempFile);
#endif
    return RETURN_CONTINUE;
}

void CAGSEngine::engine_init_rooms()
{
#ifdef ______NOT_NOW
    Out::Notify("Initializing rooms");

    roomstats=(RoomStatus*)calloc(sizeof(RoomStatus),MAX_ROOMS);
    for (int ee=0;ee<MAX_ROOMS;ee++) {
        roomstats[ee].beenhere=0;
        roomstats[ee].numobj=0;
        roomstats[ee].tsdatasize=0;
        roomstats[ee].tsdata=NULL;
    }
#endif
}

int CAGSEngine::engine_init_speech()
{
#ifdef ______NOT_NOW
    play.want_speech=-2;

    FILE*ppp;

    if (usetup.no_speech_pack == 0) {
        /* Can't just use fopen here, since we need to change the filename
        so that pack functions, etc. will have the right case later */
        speech_file = ci_find_file(usetup.data_files_dir, "speech.vox");

        ppp = ci_fopen(speech_file, "rb");

        if (ppp == NULL)
        {
            // In case they're running in debug, check Compiled folder
            free(speech_file);
            speech_file = ci_find_file("Compiled", "speech.vox");
            ppp = ci_fopen(speech_file, "rb");
        }

        if (ppp!=NULL) {
            fclose(ppp);

            Out::Notify("Initializing speech vox");

            //if (csetlib(useloc,"")!=0) {
            if (csetlib(speech_file,"")!=0) {
                platform->DisplayAlert("Unable to initialize speech sample file - check for corruption and that\nit belongs to this game.\n");
                return EXIT_NORMAL;
            }
            FILE *speechsync = clibfopen("syncdata.dat", "rb");
            if (speechsync != NULL) {
                // this game has voice lip sync
                if (getw(speechsync) != 4)
                { 
                    // Don't display this warning.
                    // platform->DisplayAlert("Unknown speech lip sync format (might be from older or newer version); lip sync disabled");
                }
                else {
                    numLipLines = getw(speechsync);
                    splipsync = (SpeechLipSyncLine*)malloc (sizeof(SpeechLipSyncLine) * numLipLines);
                    for (int ee = 0; ee < numLipLines; ee++)
                    {
                        splipsync[ee].numPhenomes = getshort(speechsync);
                        fread(splipsync[ee].filename, 1, 14, speechsync);
                        splipsync[ee].endtimeoffs = (int*)malloc(splipsync[ee].numPhenomes * sizeof(int));
                        fread(splipsync[ee].endtimeoffs, sizeof(int), splipsync[ee].numPhenomes, speechsync);
                        splipsync[ee].frame = (short*)malloc(splipsync[ee].numPhenomes * sizeof(short));
                        fread(splipsync[ee].frame, sizeof(short), splipsync[ee].numPhenomes, speechsync);
                    }
                }
                fclose (speechsync);
            }
            csetlib(game_file_name,"");
            platform->WriteConsole("Speech sample file found and initialized.\n");
            play.want_speech=1;
        }
    }
#endif

    return RETURN_CONTINUE;
}

int CAGSEngine::engine_init_music()
{
#ifdef ______NOT_NOW
    FILE*ppp;
    play.seperate_music_lib = 0;

    /* Can't just use fopen here, since we need to change the filename
    so that pack functions, etc. will have the right case later */
    music_file = ci_find_file(usetup.data_files_dir, "audio.vox");

    /* Don't need to use ci_fopen here, because we've used ci_find_file to get
    the case insensitive matched filename already */
    // Use ci_fopen anyway because it can handle NULL filenames.
    ppp = ci_fopen(music_file, "rb");

    if (ppp == NULL)
    {
        // In case they're running in debug, check Compiled folder
        free(music_file);
        music_file = ci_find_file("Compiled", "audio.vox");
        ppp = ci_fopen(music_file, "rb");
    }

    if (ppp!=NULL) {
        fclose(ppp);

        Out::Notify("Initializing audio vox");

        //if (csetlib(useloc,"")!=0) {
        if (csetlib(music_file,"")!=0) {
            platform->DisplayAlert("Unable to initialize music library - check for corruption and that\nit belongs to this game.\n");
            return EXIT_NORMAL;
        }
        csetlib(game_file_name,"");
        platform->WriteConsole("Audio vox found and initialized.\n");
        play.seperate_music_lib = 1;
    }
#endif

    return RETURN_CONTINUE;
}

void CAGSEngine::engine_init_keyboard()
{
#ifdef ______NOT_NOW
#ifdef ALLEGRO_KEYBOARD_HANDLER
    Out::Notify("Initializing keyboard");

    install_keyboard();
#endif
#endif
}

void CAGSEngine::engine_init_timer()
{
#ifdef ______NOT_NOW
    Out::Notify("Install timer");

    platform->WriteConsole("Checking sound inits.\n");
    if (opts.mod_player) reserve_voices(16,-1);
    // maybe this line will solve the sound volume?
    // [IKM] does this refer to install_timer or set_volume_per_voice?
    install_timer();
#if ALLEGRO_DATE > 19991010
    set_volume_per_voice(1);
#endif
#endif
}

void CAGSEngine::engine_init_sound()
{
#ifdef ______NOT_NOW
#ifdef WINDOWS_VERSION
    // don't let it use the hardware mixer verion, crashes some systems
    //if ((usetup.digicard == DIGI_AUTODETECT) || (usetup.digicard == DIGI_DIRECTX(0)))
    //    usetup.digicard = DIGI_DIRECTAMX(0);

    if (usetup.digicard == DIGI_DIRECTX(0)) {
        // DirectX mixer seems to buffer an extra sample itself
        use_extra_sound_offset = 1;
    }

    // if the user clicked away to another app while we were
    // loading, DirectSound will fail to initialize. There doesn't
    // seem to be a solution to force us back to the foreground,
    // because we have no actual visible window at this time

#endif

    Out::Notify("Initialize sound drivers");

    // PSP: Disable sound by config file.
    if (!psp_audio_enabled)
    {
        usetup.digicard = DIGI_NONE;
        usetup.midicard = MIDI_NONE;
    }

    if (!psp_midi_enabled)
        usetup.midicard = MIDI_NONE;

    if (install_sound(usetup.digicard,usetup.midicard,NULL)!=0) {
        reserve_voices(-1,-1);
        opts.mod_player=0;
        opts.mp3_player=0;
        if (install_sound(usetup.digicard,usetup.midicard,NULL)!=0) {
            if ((usetup.digicard != DIGI_NONE) && (usetup.midicard != MIDI_NONE)) {
                // only flag an error if they wanted a sound card
                platform->DisplayAlert("\nUnable to initialize your audio hardware.\n"
                    "[Problem: %s]\n",allegro_error);
            }
            reserve_voices(0,0);
            install_sound(DIGI_NONE, MIDI_NONE, NULL);
            usetup.digicard = DIGI_NONE;
            usetup.midicard = MIDI_NONE;
        }
    }

    SetEIP(-181);

    if (usetup.digicard == DIGI_NONE) {
        // disable speech and music if no digital sound
        // therefore the MIDI soundtrack will be used if present,
        // and the voice mode should not go to Voice Only
        play.want_speech = -2;
        play.seperate_music_lib = 0;
    }
#endif
}

void CAGSEngine::engine_init_debug()
{
#ifdef ______NOT_NOW
    //set_volume(255,-1);
    if ((debug_flags & (~DBG_DEBUGMODE)) >0) {
        platform->DisplayAlert("Engine debugging enabled.\n"
            "\nNOTE: You have selected to enable one or more engine debugging options.\n"
            "These options cause many parts of the game to behave abnormally, and you\n"
            "may not see the game as you are used to it. The point is to test whether\n"
            "the engine passes a point where it is crashing on you normally.\n"
            "[Debug flags enabled: 0x%02X]\n"
            "Press a key to continue.\n",debug_flags);
    }
#endif
}

void CAGSEngine::atexit_handler() {
#ifdef ______NOT_NOW
    if (proper_exit==0) {
        sprintf(pexbuf,"\nError: the program has exited without requesting it.\n"
            "Program pointer: %+03d  (write this number down), ACI version " ACI_VERSION_TEXT "\n"
            "If you see a list of numbers above, please write them down and contact\n"
            "Chris Jones. Otherwise, note down any other information displayed.\n",
            our_eip);
        platform->DisplayAlert(pexbuf);
    }

    if (!(music_file == NULL))
        free(music_file);

    if (!(speech_file == NULL))
        free(speech_file);

    // Deliberately commented out, because chances are game_file_name
    // was not allocated on the heap, it points to argv[0] or
    // the gamefilenamebuf memory
    // It will get freed by the system anyway, leaving it in can
    // cause a crash on exit
    /*if (!(game_file_name == NULL))
    free(game_file_name);*/
#endif
}

void atexit_handler() {
    CAGSEngine::GetInstance()->atexit_handler();
}

void CAGSEngine::engine_init_exit_handler()
{
#ifdef ______NOT_NOW
    Out::Notify("Install exit handler");

    atexit(atexit_handler);
#endif
}

void CAGSEngine::engine_init_rand()
{
#ifdef ______NOT_NOW
    play.randseed = time(NULL);
    srand (play.randseed);
#endif
}

void CAGSEngine::engine_init_pathfinder()
{
    Out::Notify("Initialize path finder library");

#ifdef ______NOT_NOW
    init_pathfinder();
#endif
}

void CAGSEngine::engine_pre_init_gfx()
{
    Out::Notify("Initialize gfx");

#ifdef ______NOT_NOW
    platform->InitialiseAbufAtStartup();
#endif
}

int CAGSEngine::engine_load_game_data()
{
#ifdef ______NOT_NOW
    Out::Notify("Load game data");

    our_eip=-17;
    int ee=load_game_file();
    if (ee != 0) {
        proper_exit=1;
        platform->FinishedUsingGraphicsMode();

        if (ee==-1)
            platform->DisplayAlert("Main game file not found. This may be from a different AGS version, or the file may have got corrupted.\n");
        else if (ee==-2)
            platform->DisplayAlert("Invalid file format. The file may be corrupt, or from a different\n"
            "version of AGS.\nThis engine can only run games made with AGS 2.5 or later.\n");
        else if (ee==-3)
            platform->DisplayAlert("Script link failed: %s\n",ccErrorString);
        return EXIT_NORMAL;
    }
#endif

    return RETURN_CONTINUE;
}

int CAGSEngine::engine_check_register_game()
{
#ifdef ______NOT_NOW
    if (justRegisterGame) 
    {
        platform->RegisterGameWithGameExplorer();
        proper_exit = 1;
        return EXIT_NORMAL;
    }

    if (justUnRegisterGame) 
    {
        platform->UnRegisterGameWithGameExplorer();
        proper_exit = 1;
        return EXIT_NORMAL;
    }
#endif

    return RETURN_CONTINUE;
}

void CAGSEngine::engine_init_title()
{
#ifdef ______NOT_NOW
    //platform->DisplayAlert("loaded game");
    our_eip=-91;
#if (ALLEGRO_DATE > 19990103)
    set_window_title(game.gamename);
#endif

    Out::Notify(game.gamename);
#endif
}

void CAGSEngine::engine_init_directories()
{
#ifdef ______NOT_NOW
    if (file_exists("Compiled", FA_ARCH | FA_DIREC, NULL))
    {
        // running in debugger
        use_compiled_folder_as_current_dir = 1;
        // don't redirect to the game exe folder (_Debug)
        usetup.data_files_dir = ".";
    }

    if (game.saveGameFolderName[0] != 0)
    {
        char newDirBuffer[MAX_PATH];
        sprintf(newDirBuffer, "$MYDOCS$/%s", game.saveGameFolderName);
        Game_SetSaveGameDirectory(newDirBuffer);
    }
    else if (use_compiled_folder_as_current_dir)
    {
        Game_SetSaveGameDirectory("Compiled");
    }
#endif
}

int CAGSEngine::check_write_access() {

#ifdef ______NOT_NOW
  if (platform->GetDiskFreeSpaceMB() < 2)
    return 0;

  SetEIP(-1895);

  // The Save Game Dir is the only place that we should write to
  char tempPath[MAX_PATH];
  sprintf(tempPath, "%s""tmptest.tmp", saveGameDirectory);
  FILE *yy = fopen(tempPath, "wb");
  if (yy == NULL)
    return 0;

  SetEIP(-1896);

  fwrite("just to test the drive free space", 30, 1, yy);
  fclose(yy);

  SetEIP(-1897);

  if (unlink(tempPath))
    return 0;
#endif
  return 1;
}

int CAGSEngine::engine_check_disk_space()
{
#ifdef ______NOT_NOW
    Out::Notify("Checking for disk space");

    //init_language_text("en");
    if (check_write_access()==0) {
#if defined(IOS_VERSION)
        platform->DisplayAlert("Unable to write to the current directory. Make sure write permissions are"
            " set for the game directory.\n");
#else
        platform->DisplayAlert("Unable to write to the current directory. Do not run this game off a\n"
            "network or CD-ROM drive. Also check drive free space (you need 1 Mb free).\n");
#endif
        proper_exit = 1;
        return EXIT_NORMAL; 
    }
#endif

    return RETURN_CONTINUE;
}

// [IKM] I have a feeling this should be merged with engine_init_fonts
int CAGSEngine::engine_check_fonts()
{
#ifdef ______NOT_NOW
    if (fontRenderers[0] == NULL) 
    {
        platform->DisplayAlert("No fonts found. If you're trying to run the game from the Debug directory, this is not supported. Use the Build EXE command to create an executable in the Compiled folder.");
        proper_exit = 1;
        return EXIT_NORMAL;
    }
#endif

    return RETURN_CONTINUE;
}

void CAGSEngine::engine_init_modxm_player()
{
#ifdef ______NOT_NOW
#ifndef PSP_NO_MOD_PLAYBACK
    if (game.options[OPT_NOMODMUSIC])
        opts.mod_player = 0;

    if (opts.mod_player) {
        Out::Notify("Initializing MOD/XM player");

        if (init_mod_player(NUM_MOD_DIGI_VOICES) < 0) {
            platform->DisplayAlert("Warning: install_mod: MOD player failed to initialize.");
            opts.mod_player=0;
        }
    }
#else
    opts.mod_player = 0;
    Out::Notify("Compiled without MOD/XM player");
#endif
#endif
}

void CAGSEngine::show_preload () {
#ifdef ______NOT_NOW
    // ** Do the preload graphic if available
    color temppal[256];
    block splashsc = load_pcx("preload.pcx",temppal);
    if (splashsc != NULL) {
        if (bitmap_color_depth(splashsc) == 8)
            wsetpalette(0,255,temppal);
        block tsc = create_bitmap_ex(bitmap_color_depth(screen),splashsc->w,splashsc->h);
        blit(splashsc,tsc,0,0,0,0,tsc->w,tsc->h);
        clear(screen);
        stretch_sprite(screen, tsc, 0, 0, scrnwid,scrnhit);

        gfxDriver->ClearDrawList();

        if (!gfxDriver->UsesMemoryBackBuffer())
        {
            IDriverDependantBitmap *ddb = gfxDriver->CreateDDBFromBitmap(screen, false, true);
            gfxDriver->DrawSprite(0, 0, ddb);
            render_to_screen(screen, 0, 0);
            gfxDriver->DestroyDDB(ddb);
        }
        else
            render_to_screen(screen, 0, 0);

        wfreeblock(splashsc);
        wfreeblock(tsc);
        platform->Delay(500);
    }
#endif
}

void CAGSEngine::engine_show_preload()
{
    Out::Notify("Check for preload image");

    show_preload ();
}

int CAGSEngine::engine_init_sprites()
{
#ifdef ______NOT_NOW
    Out::Notify("Initialize sprites");

    if (spriteset.initFile ("acsprset.spr")) 
    {
        platform->FinishedUsingGraphicsMode();
        allegro_exit();
        proper_exit=1;
        platform->DisplayAlert("Could not load sprite set file ACSPRSET.SPR\n"
            "This means that the file is missing or there is not enough free\n"
            "system memory to load the file.\n");
        return EXIT_NORMAL;
    }
#endif
    return RETURN_CONTINUE;
}

void CAGSEngine::engine_setup_screen()
{
#ifdef ______NOT_NOW
    Out::Notify("Set up screen");

    virtual_screen=create_bitmap_ex(final_col_dep,scrnwid,scrnhit);
    clear(virtual_screen);
    gfxDriver->SetMemoryBackBuffer(virtual_screen);
    //  ignore_mouseoff_bitmap = virtual_screen;
    abuf=screen;
    our_eip=-7;

    for (int ee = 0; ee < MAX_INIT_SPR + game.numcharacters; ee++)
        actsps[ee] = NULL;
#endif
}

void CAGSEngine::init_game_settings() {

#ifdef ______NOT_NOW
    int ee;

    for (ee=0;ee<256;ee++) {
        if (game.paluses[ee]!=PAL_BACKGROUND)
            palette[ee]=game.defpal[ee];
    }

    if (game.options[OPT_NOSCALEFNT]) wtext_multiply=1;

    for (ee = 0; ee < game.numcursors; ee++) 
    {
        // The cursor graphics are assigned to mousecurs[] and so cannot
        // be removed from memory
        if (game.mcurs[ee].pic >= 0)
            spriteset.precache (game.mcurs[ee].pic);

        // just in case they typed an invalid view number in the editor
        if (game.mcurs[ee].view >= game.numviews)
            game.mcurs[ee].view = -1;

        if (game.mcurs[ee].view >= 0)
            precache_view (game.mcurs[ee].view);
    }
    // may as well preload the character gfx
    if (playerchar->view >= 0)
        precache_view (playerchar->view);

    for (ee = 0; ee < MAX_INIT_SPR; ee++)
        objcache[ee].image = NULL;

    /*  dummygui.guiId = -1;
    dummyguicontrol.guin = -1;
    dummyguicontrol.objn = -1;*/

    our_eip=-6;
    //  game.chars[0].talkview=4;
    //init_language_text(game.langcodes[0]);

    for (ee = 0; ee < MAX_INIT_SPR; ee++) {
        scrObj[ee].id = ee;
        scrObj[ee].obj = NULL;
    }

    for (ee=0;ee<game.numcharacters;ee++) {
        memset(&game.chars[ee].inv[0],0,MAX_INV*sizeof(short));
        game.chars[ee].activeinv=-1;
        game.chars[ee].following=-1;
        game.chars[ee].followinfo=97 | (10 << 8);
        game.chars[ee].idletime=20;  // can be overridden later with SetIdle or summink
        game.chars[ee].idleleft=game.chars[ee].idletime;
        game.chars[ee].transparency = 0;
        game.chars[ee].baseline = -1;
        game.chars[ee].walkwaitcounter = 0;
        game.chars[ee].z = 0;
        charextra[ee].xwas = INVALID_X;
        charextra[ee].zoom = 100;
        if (game.chars[ee].view >= 0) {
            // set initial loop to 0
            game.chars[ee].loop = 0;
            // or to 1 if they don't have up/down frames
            if (views[game.chars[ee].view].loops[0].numFrames < 1)
                game.chars[ee].loop = 1;
        }
        charextra[ee].process_idle_this_time = 0;
        charextra[ee].invorder_count = 0;
        charextra[ee].slow_move_counter = 0;
        charextra[ee].animwait = 0;
    }
    // multiply up gui positions
    guibg = (block*)malloc(sizeof(block) * game.numgui);
    guibgbmp = (IDriverDependantBitmap**)malloc(sizeof(IDriverDependantBitmap*) * game.numgui);
    for (ee=0;ee<game.numgui;ee++) {
        guibgbmp[ee] = NULL;
        GUIMain*cgp=&guis[ee];
        guibg[ee] = create_bitmap_ex (final_col_dep, cgp->wid, cgp->hit);
        guibg[ee] = gfxDriver->ConvertBitmapToSupportedColourDepth(guibg[ee]);
    }

    our_eip=-5;
    for (ee=0;ee<game.numinvitems;ee++) {
        if (game.invinfo[ee].flags & IFLG_STARTWITH) playerchar->inv[ee]=1;
        else playerchar->inv[ee]=0;
    }
    play.score=0;
    play.sierra_inv_color=7;
    play.talkanim_speed = 5;
    play.inv_item_wid = 40;
    play.inv_item_hit = 22;
    play.messagetime=-1;
    play.disabled_user_interface=0;
    play.gscript_timer=-1;
    play.debug_mode=game.options[OPT_DEBUGMODE];
    play.inv_top=0;
    play.inv_numdisp=0;
    play.obsolete_inv_numorder=0;
    play.text_speed=15;
    play.text_min_display_time_ms = 1000;
    play.ignore_user_input_after_text_timeout_ms = 500;
    play.ignore_user_input_until_time = 0;
    play.lipsync_speed = 15;
    play.close_mouth_speech_time = 10;
    play.disable_antialiasing = 0;
    play.rtint_level = 0;
    play.rtint_light = 255;
    play.text_speed_modifier = 0;
    play.text_align = SCALIGN_LEFT;
    // Make the default alignment to the right with right-to-left text
    if (game.options[OPT_RIGHTLEFTWRITE])
        play.text_align = SCALIGN_RIGHT;

    play.speech_bubble_width = get_fixed_pixel_size(100);
    play.bg_frame=0;
    play.bg_frame_locked=0;
    play.bg_anim_delay=0;
    play.anim_background_speed = 0;
    play.silent_midi = 0;
    play.current_music_repeating = 0;
    play.skip_until_char_stops = -1;
    play.get_loc_name_last_time = -1;
    play.get_loc_name_save_cursor = -1;
    play.restore_cursor_mode_to = -1;
    play.restore_cursor_image_to = -1;
    play.ground_level_areas_disabled = 0;
    play.next_screen_transition = -1;
    play.temporarily_turned_off_character = -1;
    play.inv_backwards_compatibility = 0;
    play.gamma_adjustment = 100;
    play.num_do_once_tokens = 0;
    play.do_once_tokens = NULL;
    play.music_queue_size = 0;
    play.shakesc_length = 0;
    play.wait_counter=0;
    play.key_skip_wait = 0;
    play.cur_music_number=-1;
    play.music_repeat=1;
    play.music_master_volume=160;
    play.digital_master_volume = 100;
    play.screen_flipped=0;
    play.offsets_locked=0;
    play.cant_skip_speech = user_to_internal_skip_speech(game.options[OPT_NOSKIPTEXT]);
    play.sound_volume = 255;
    play.speech_volume = 255;
    play.normal_font = 0;
    play.speech_font = 1;
    play.speech_text_shadow = 16;
    play.screen_tint = -1;
    play.bad_parsed_word[0] = 0;
    play.swap_portrait_side = 0;
    play.swap_portrait_lastchar = -1;
    play.in_conversation = 0;
    play.skip_display = 3;
    play.no_multiloop_repeat = 0;
    play.in_cutscene = 0;
    play.fast_forward = 0;
    play.totalscore = game.totalscore;
    play.roomscript_finished = 0;
    play.no_textbg_when_voice = 0;
    play.max_dialogoption_width = get_fixed_pixel_size(180);
    play.no_hicolor_fadein = 0;
    play.bgspeech_game_speed = 0;
    play.bgspeech_stay_on_display = 0;
    play.unfactor_speech_from_textlength = 0;
    play.mp3_loop_before_end = 70;
    play.speech_music_drop = 60;
    play.room_changes = 0;
    play.check_interaction_only = 0;
    play.replay_hotkey = 318;  // Alt+R
    play.dialog_options_x = 0;
    play.dialog_options_y = 0;
    play.min_dialogoption_width = 0;
    play.disable_dialog_parser = 0;
    play.ambient_sounds_persist = 0;
    play.screen_is_faded_out = 0;
    play.player_on_region = 0;
    play.top_bar_backcolor = 8;
    play.top_bar_textcolor = 16;
    play.top_bar_bordercolor = 8;
    play.top_bar_borderwidth = 1;
    play.top_bar_ypos = 25;
    play.top_bar_font = -1;
    play.screenshot_width = 160;
    play.screenshot_height = 100;
    play.speech_text_align = SCALIGN_CENTRE;
    play.auto_use_walkto_points = 1;
    play.inventory_greys_out = 0;
    play.skip_speech_specific_key = 0;
    play.abort_key = 324;  // Alt+X
    play.fade_to_red = 0;
    play.fade_to_green = 0;
    play.fade_to_blue = 0;
    play.show_single_dialog_option = 0;
    play.keep_screen_during_instant_transition = 0;
    play.read_dialog_option_colour = -1;
    play.narrator_speech = game.playercharacter;
    play.crossfading_out_channel = 0;
    play.speech_textwindow_gui = game.options[OPT_TWCUSTOM];
    if (play.speech_textwindow_gui == 0)
        play.speech_textwindow_gui = -1;
    strcpy(play.game_name, game.gamename);
    play.lastParserEntry[0] = 0;
    play.follow_change_room_timer = 150;
    for (ee = 0; ee < MAX_BSCENE; ee++) 
        play.raw_modified[ee] = 0;
    play.game_speed_modifier = 0;
    if (debug_flags & DBG_DEBUGMODE)
        play.debug_mode = 1;
    gui_disabled_style = convert_gui_disabled_style(game.options[OPT_DISABLEOFF]);

    memset(&play.walkable_areas_on[0],1,MAX_WALK_AREAS+1);
    memset(&play.script_timers[0],0,MAX_TIMERS * sizeof(int));
    memset(&play.default_audio_type_volumes[0], -1, MAX_AUDIO_TYPES * sizeof(int));

    // reset graphical script vars (they're still used by some games)
    for (ee = 0; ee < MAXGLOBALVARS; ee++) 
        play.globalvars[ee] = 0;

    for (ee = 0; ee < MAXGLOBALSTRINGS; ee++)
        play.globalstrings[ee][0] = 0;

    for (ee = 0; ee < MAX_SOUND_CHANNELS; ee++)
        last_sound_played[ee] = -1;

    if (usetup.translation)
        init_translation (usetup.translation);

    update_invorder();
    displayed_room = -10;
#endif
}

void CAGSEngine::engine_init_game_settings()
{
    Out::Notify("Initialize game settings");

    init_game_settings();
}

void CAGSEngine::engine_init_game_shit()
{
#ifdef ______NOT_NOW
    scsystem.width = final_scrn_wid;
    scsystem.height = final_scrn_hit;
    scsystem.coldepth = final_col_dep;
    scsystem.windowed = 0;
    scsystem.vsync = 0;
    scsystem.viewport_width = divide_down_coordinate(scrnwid);
    scsystem.viewport_height = divide_down_coordinate(scrnhit);
    strcpy(scsystem.aci_version, ACI_VERSION_TEXT);
    scsystem.os = platform->GetSystemOSID();

    if (usetup.windowed)
        scsystem.windowed = 1;

#if defined(WINDOWS_VERSION) || defined(LINUX_VERSION) || defined(MAC_VERSION)
    filter->SetMouseArea(0, 0, scrnwid-1, scrnhit-1);
#else
    filter->SetMouseArea(0,0,BASEWIDTH-1,BASEHEIGHT-1);
#endif
    //  mloadwcursor("mouse.spr");
    //mousecurs[0]=spriteset[2054];
    currentcursor=0;
    our_eip=-4;
    mousey=100;  // stop icon bar popping up
    init_invalid_regions(final_scrn_hit);
    wsetscreen(virtual_screen);
    SetEIP(-41);

    gfxDriver->SetRenderOffset(get_screen_x_adjustment(virtual_screen), get_screen_y_adjustment(virtual_screen));
#endif
}

#if defined(PSP_VERSION)
// PSP: Workaround for sound stuttering. Do sound updates in its own thread.
int CAGSEngine::update_mp3_thread(SceSize args, void *argp)
{
  while (update_mp3_thread_running)
  {
    UPDATE_MP3_THREAD
    sceKernelDelayThread(1000 * 50);
  }
  return 0;
}
#elif (defined(LINUX_VERSION) && !defined(PSP_VERSION)) || defined(MAC_VERSION)
void* CAGSEngine::update_mp3_thread(void* arg)
{
  while (update_mp3_thread_running)
  {
    UPDATE_MP3_THREAD
    usleep(1000 * 50);
  }
  pthread_exit(NULL);
}
#elif defined(WINDOWS_VERSION)
DWORD WINAPI CAGSEngine::update_mp3_thread(LPVOID lpParam)
{
#ifdef ______NOT_NOW
  while (update_mp3_thread_running)
  {
    UPDATE_MP3_THREAD
    Sleep(50);
  }
#endif
  return 0;
}
#endif

void CAGSEngine::engine_start_multithreaded_audio()
{
#ifdef ______NOT_NOW
    // PSP: Initialize the sound cache.
    clear_sound_cache();

    // Create sound update thread. This is a workaround for sound stuttering.
    if (psp_audio_multithreaded)
    {
#if defined(PSP_VERSION)
        update_mp3_thread_running = true;
        SceUID thid = sceKernelCreateThread("update_mp3_thread", update_mp3_thread, 0x20, 0xFA0, THREAD_ATTR_USER, 0);
        if (thid > -1)
            thid = sceKernelStartThread(thid, 0, 0);
        else
        {
            update_mp3_thread_running = false;
            psp_audio_multithreaded = 0;
        }
#elif (defined(LINUX_VERSION) && !defined(PSP_VERSION)) || defined(MAC_VERSION)
        update_mp3_thread_running = true;
        if (pthread_create(&soundthread, NULL, update_mp3_thread, NULL) != 0)
        {
            update_mp3_thread_running = false;
            psp_audio_multithreaded = 0;
        }
#elif defined(WINDOWS_VERSION)
        update_mp3_thread_running = true;
        if (CreateThread(NULL, 0, update_mp3_thread, NULL, 0, NULL) == NULL)
        {
            update_mp3_thread_running = false;
            psp_audio_multithreaded = 0;
        }
#endif
    }
#endif
}

void CAGSEngine::engine_prepare_to_start_game()
{
#ifdef ______NOT_NOW
    Out::Notify("Prepare to start game");

    engine_init_game_shit();
    engine_start_multithreaded_audio();

#if defined(ANDROID_VERSION)
    if (psp_load_latest_savegame)
        selectLatestSavegame();
#endif
#endif
}

HErr CAGSEngine::Initialize(const CCmdArgs &cmdargs)
{
    ReadConfigFile(cmdargs.GetArgStringAt(0));
    set_uformat(U_ASCII);


#ifdef ______NOT_NOW
    int res;

    res = engine_init_allegro();
    if (res != RETURN_CONTINUE) {
        return res;
    }    

    engine_setup_window();

    SetEIP(-196);

    res = engine_check_run_setup(argc, argv);
    if (res != RETURN_CONTINUE) {
        return res;
    }

    engine_force_window();

    SetEIP(-195);

    res = engine_init_game_data(argc, argv);
    if (res != RETURN_CONTINUE) {
        return res;
    }

    SetEIP(-192);

    engine_init_fonts();

    SetEIP(-188);

    res = engine_init_mouse();
	if (res != RETURN_CONTINUE) {
        return res;
    }

    SetEIP(-187);

    res = engine_check_memory();
    if (res != RETURN_CONTINUE) {
        return res;
    }

    engine_init_rooms();

    SetEIP(-186);
    
    res = engine_init_speech();
    if (res != RETURN_CONTINUE) {
        return res;
    }

    SetEIP(-185);
    
    res = engine_init_music();
    if (res != RETURN_CONTINUE) {
        return res;
    }

    SetEIP(-184);

    engine_init_keyboard();

    SetEIP(-183);

    engine_init_timer();

    SetEIP(-182);

    engine_init_sound();

    engine_init_debug();

    SetEIP(-10);

    engine_init_exit_handler();

    // [IKM] I seriously don't get it why do we need to delete warnings.log
    // in the middle of procedure; some warnings may have already being
    // written there at this point, no?
    unlink("warnings.log");

    engine_init_rand();

    engine_init_pathfinder();

    engine_pre_init_gfx();

    LOCK_VARIABLE(timerloop);
    LOCK_FUNCTION(dj_timer_handler);
    set_game_speed(40);

    our_eip=-20;
    //thisroom.allocall();
    our_eip=-19;
    //setup_sierra_interface();   // take this out later

    res = engine_load_game_data();
    if (res != RETURN_CONTINUE) {
        return res;
    }
    
    res = engine_check_register_game();
    if (res != RETURN_CONTINUE) {
        return res;
    }

    engine_init_title();

    SetEIP(-189);

    engine_init_directories();

    SetEIP(-178);

    res = engine_check_disk_space();
    if (res != RETURN_CONTINUE) {
        return res;
    }

    // [IKM] I do not really understand why is this checked only now;
    // should not it be checked right after fonts initialization?
    res = engine_check_fonts();
    if (res != RETURN_CONTINUE) {
        return res;
    }

    SetEIP(-179);

    engine_init_modxm_player();

    engine_init_screen_settings();

    res = engine_init_gfx_filters();
    if (res != RETURN_CONTINUE) {
        return res;
    }

    engine_init_gfx_driver();

    res = engine_init_graphics_mode();
    if (res != RETURN_CONTINUE) {
        return res;
    }

    engine_post_init_gfx_driver();

    engine_prepare_screen();

    platform->PostAllegroInit((usetup.windowed > 0) ? true : false);

    engine_set_gfx_driver_callbacks();

    engine_set_color_conversions();

    SetMultitasking(0);

    engine_show_preload();

    res = engine_init_sprites();
    if (res != RETURN_CONTINUE) {
        return res;
    }

    engine_setup_screen();

    engine_init_game_settings();

    engine_prepare_to_start_game();

    initialize_start_and_play_game(override_start_room, loadSaveGameOnStartup);

    update_mp3_thread_running = false;

    quit("|bye!");
#endif
    return 0;
}

HErr CAGSEngine::InitializeWithExceptionHandling(const CCmdArgs &cmdargs)
{
    Out::Notify("Installing exception handler");

#ifdef USE_CUSTOM_EXCEPTION_HANDLER
    __try 
    {
#endif

        return Initialize(cmdargs);

#ifdef USE_CUSTOM_EXCEPTION_HANDLER
    }
    __except (CustomExceptionHandler ( GetExceptionInformation() )) 
    {
        strcpy (tempmsg, "");
        sprintf (printfworkingspace, "An exception 0x%X occurred in ACWIN.EXE at EIP = 0x%08X %s; program pointer is %+d, ACI version " ACI_VERSION_TEXT ", gtags (%d,%d)\n\n"
            "AGS cannot continue, this exception was fatal. Please note down the numbers above, remember what you were doing at the time and post the details on the AGS Technical Forum.\n\n%s\n\n"
            "Most versions of Windows allow you to press Ctrl+C now to copy this entire message to the clipboard for easy reporting.\n\n%s (code %d)",
            excinfo.ExceptionCode, excinfo.ExceptionAddress, tempmsg, our_eip, eip_guinum, eip_guiobj, get_cur_script(5),
            (miniDumpResultCode == 0) ? "An error file CrashInfo.dmp has been created. You may be asked to upload this file when reporting this problem on the AGS Forums." : 
            "Unable to create an error dump file.", miniDumpResultCode);
        MessageBoxA(allegro_wnd, printfworkingspace, "Illegal exception", MB_ICONSTOP | MB_OK);
        proper_exit = 1;
    }
    return EXIT_CRASH;
#endif
}

void CAGSEngine::OverrideSetup()
{
    _theSetup->GfxDriverID = "DX5";
    _theSetup->EnableAntialiasing = 1;//psp_gfx_smooth_sprites;
    _theSetup->Translation = "default";//psp_translation;
}

CAGSEngine::CAGSEngine()
{
    _eip                = 0;
    _ignoreConfigFile   = false;

    _theSetup           = new CEngineSetup();
}

} // namespace Core
} // namespace Engine
} // namespace AGS