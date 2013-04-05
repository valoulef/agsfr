// temporarily removed palette functions cos the compiler
// doesnt support typedefs
#define function int  // $AUTOCOMPLETEIGNORE$
// CursorMode isn't actually defined yet, but int will do
#define CursorMode int
#define FontType int
#define AudioType int
#define MAX_INV 301
#define FOLLOW_EXACTLY 32766
#define NARRATOR -1
#define OPT_WALKONLOOK       2
#define OPT_DIALOGOPTIONSGUI 3
#define OPT_ANTIGLIDE        4   // $AUTOCOMPLETEIGNORE$
#define OPT_DIALOGOPTIONSGAP 6
#define OPT_WHENGUIDISABLED  8
#define OPT_ALWAYSSPEECH     9
#define OPT_PIXELPERFECT    11
#define OPT_NOWALKMODE      12
#define OPT_FIXEDINVCURSOR  14
#define OPT_DONTLOSEINV     15
#define OPT_TURNBEFOREWALK  18
#define OPT_HANDLEINVCLICKS 20
#define OPT_MOUSEWHEEL      21
#define OPT_DIALOGNUMBERED  22
#define OPT_DIALOGUPWARDS   23
#define OPT_CROSSFADEMUSIC  24
#define OPT_ANTIALIASFONTS  25
#define OPT_THOUGHTGUI      26
#define OPT_TURNWHENFACING  27
#define OPT_RIGHTTOLEFT     28
#define OPT_MULTIPLEINV     29
#define OPT_SAVEGAMESCREENSHOTS 30
#define OPT_PORTRAITPOSITION 31
#define OPT_LIPSYNCTEXT     99
#define COLOR_TRANSPARENT -1
#define DIALOG_PARSER_SELECTED -3053
#define RUN_DIALOG_RETURN        -1
#define RUN_DIALOG_STOP_DIALOG   -2
#define RUN_DIALOG_GOTO_PREVIOUS -4

#define SCR_NO_VALUE   31998   // $AUTOCOMPLETEIGNORE$

enum bool {
  false = 0,
  true = 1
};

enum eOperatingSystem {
  eOSDOS = 1,
  eOSWindows,
  eOSLinux,
  eOSMacOS
};

enum TransitionStyle {
  eTransitionFade=0,
  eTransitionInstant,
  eTransitionDissolve,
  eTransitionBoxout,
  eTransitionCrossfade
};

enum MouseButton {
  eMouseLeft = 1,
  eMouseRight = 2,
  eMouseMiddle = 3,
  eMouseLeftInv = 5,
  eMouseRightInv = 6,
  eMouseMiddleInv = 7,
  eMouseWheelNorth = 8,
  eMouseWheelSouth = 9
};

enum RoundDirection {
  eRoundDown = 0,
  eRoundNearest = 1,
  eRoundUp = 2
};

enum RepeatStyle {
  eOnce = 0,
  eRepeat = 1
};

enum Alignment {
  eAlignLeft = 1,
  eAlignCentre = 2,
  eAlignRight = 3
};

enum LocationType {
  eLocationNothing = 0,
  eLocationHotspot = 1,
  eLocationCharacter = 2,
  eLocationObject = 3
};

enum CutsceneSkipType {
  eSkipESCOnly = 1,
  eSkipAnyKey = 2,
  eSkipMouseClick = 3,
  eSkipAnyKeyOrMouseClick = 4,
  eSkipESCOrRightButton = 5
};

enum DialogOptionState {
  eOptionOff = 0,
  eOptionOn = 1,
  eOptionOffForever = 2
};

enum eSpeechStyle {
  eSpeechLucasarts = 0,
  eSpeechSierra = 1,
  eSpeechSierraWithBackground = 2,
  eSpeechFullScreen = 3
};

enum eVoiceMode {
  eSpeechTextOnly = 0,
  eSpeechVoiceAndText = 1,
  eSpeechVoiceOnly = 2
};

enum eFlipDirection {
  eFlipLeftToRight = 1,
  eFlipUpsideDown = 2,
  eFlipBoth = 3
};

enum eCDAudioFunction {
  eCDIsDriverPresent = 0,
  eCDGetPlayingStatus,
  eCDPlayTrack,
  eCDPausePlayback,
  eCDResumePlayback,
  eCDGetNumTracks,
  eCDEject,
  eCDCloseTray,
  eCDGetCDDriveCount,
  eCDSelectActiveCDDrive
};

enum DialogOptionSayStyle
{
  eSayUseOptionSetting = 1,
  eSayAlways = 2,
  eSayNever = 3
};

enum VideoSkipStyle
{
  eVideoSkipNotAllowed = 0,
  eVideoSkipEscKey = 1,
  eVideoSkipAnyKey = 2,
  eVideoSkipAnyKeyOrMouse = 3
};

enum eKeyCode
{
  eKeyCtrlA = 1,
  eKeyCtrlB = 2,
  eKeyCtrlC = 3,
  eKeyCtrlD = 4,
  eKeyCtrlE = 5,
  eKeyCtrlF = 6,
  eKeyCtrlG = 7,
  eKeyCtrlH = 8,
  eKeyBackspace = 8,
  eKeyCtrlI = 9,
  eKeyTab = 9,
  eKeyCtrlJ = 10,
  eKeyCtrlK = 11,
  eKeyCtrlL = 12,
  eKeyCtrlM = 13,
  eKeyReturn = 13,
  eKeyCtrlN = 14,
  eKeyCtrlO = 15,
  eKeyCtrlP = 16,
  eKeyCtrlQ = 17,
  eKeyCtrlR = 18,
  eKeyCtrlS = 19,
  eKeyCtrlT = 20,
  eKeyCtrlU = 21,
  eKeyCtrlV = 22,
  eKeyCtrlW = 23,
  eKeyCtrlX = 24,
  eKeyCtrlY = 25,
  eKeyCtrlZ = 26,
  eKeyEscape = 27,
  eKeySpace = 32,
  eKeyExclamationMark = 33,
  eKeyDoubleQuote = 34,
  eKeyHash = 35,
  eKeyDollar = 36,
  eKeyPercent = 37,
  eKeyAmpersand = 38,
  eKeySingleQuote = 39,
  eKeyOpenParenthesis = 40,
  eKeyCloseParenthesis = 41,
  eKeyAsterisk = 42,
  eKeyPlus = 43,
  eKeyComma = 44,
  eKeyHyphen = 45,
  eKeyPeriod = 46,
  eKeyForwardSlash = 47,
  eKey0 = 48,
  eKey1 = 49,
  eKey2 = 50,
  eKey3 = 51,
  eKey4 = 52,
  eKey5 = 53,
  eKey6 = 54,
  eKey7 = 55,
  eKey8 = 56,
  eKey9 = 57,
  eKeyColon = 58,
  eKeySemiColon = 59,
  eKeyLessThan = 60,
  eKeyEquals = 61,
  eKeyGreaterThan = 62,
  eKeyQuestionMark = 63,
  eKeyAt = 64,
  eKeyA = 65,
  eKeyB = 66,
  eKeyC = 67,
  eKeyD = 68,
  eKeyE = 69,
  eKeyF = 70,
  eKeyG = 71,
  eKeyH = 72,
  eKeyI = 73,
  eKeyJ = 74,
  eKeyK = 75,
  eKeyL = 76,
  eKeyM = 77,
  eKeyN = 78,
  eKeyO = 79,
  eKeyP = 80,
  eKeyQ = 81,
  eKeyR = 82,
  eKeyS = 83,
  eKeyT = 84,
  eKeyU = 85,
  eKeyV = 86,
  eKeyW = 87,
  eKeyX = 88,
  eKeyY = 89,
  eKeyZ = 90,
  eKeyOpenBracket = 91,
  eKeyBackSlash = 92,
  eKeyCloseBracket = 93,
  eKeyUnderscore = 95,
  eKeyF1 = 359,
  eKeyF2 = 360,
  eKeyF3 = 361,
  eKeyF4 = 362,
  eKeyF5 = 363,
  eKeyF6 = 364,
  eKeyF7 = 365,
  eKeyF8 = 366,
  eKeyF9 = 367,
  eKeyF10 = 368,
  eKeyHome = 371,
  eKeyUpArrow = 372,
  eKeyPageUp = 373,
  eKeyLeftArrow = 375,
  eKeyNumPad5 = 376,
  eKeyRightArrow = 377,
  eKeyEnd = 379,
  eKeyDownArrow = 380,
  eKeyPageDown = 381,
  eKeyInsert = 382,
  eKeyDelete = 383,
  eKeyF11 = 433,
  eKeyF12 = 434
};

#define CHARID int  // $AUTOCOMPLETEIGNORE$
struct ColorType {
  char r,g,b;
  char filler;  // $AUTOCOMPLETEIGNORE$
  };

enum AudioFileType {
  eAudioFileOGG = 1,
  eAudioFileMP3 = 2,
  eAudioFileWAV = 3,
  eAudioFileVOC = 4,
  eAudioFileMIDI = 5,
  eAudioFileMOD = 6
};

enum AudioPriority {
  eAudioPriorityVeryLow = 1,
  eAudioPriorityLow = 25,
  eAudioPriorityNormal = 50,
  eAudioPriorityHigh = 75,
  eAudioPriorityVeryHigh = 100
};

enum ChangeVolumeType {
  eVolChangeExisting = 1678,
  eVolSetFutureDefault = 1679,
  eVolExistingAndFuture = 1680
};

internalstring autoptr managed struct String {
  /// Retourne une chaîne de texte formattée selon les paramètres passés.
  import static String Format(const string format, ...);    // $AUTOCOMPLETESTATICONLY$
  /// Retourne true si la chaîne de texte spécifiée est vide ou indéfinie (null).
  import static bool IsNullOrEmpty(String chaineTestee);  // $AUTOCOMPLETESTATICONLY$
  /// Retourne une copie de la chaîne de texte à la fin de laquelle le texte spécifié a été ajouté.
  import String  Append(const string texteAjoute);
  /// Retourne une copie de la chaîne de texte à la fin de laquelle le caractère spécifié a été ajouté.
  import String  AppendChar(char caractereAjoute);
  /// Compare le texte de la chaîne de texte au texte de AUTRECHAINE.
  import int     CompareTo(const string autreChaine, bool sensibleALaCasse = false);
  import int     Contains(const string needle);   // $AUTOCOMPLETEIGNORE$
  /// Retourne une copie de la chaîne de texte.
  import String  Copy();
  /// Retourne si la chaîne de texte se termine par le texte spécifié.
  import bool    EndsWith(const string texteDeFin, bool sensibleALaCasse = false);
  /// Retourne la position dans la chaîne de texte de la première occurrence de TEXTECHERCHE.
  import int     IndexOf(const string texteCherche);
  /// Retourne une version minuscules de la chaîne de texte spécifiée.
  import String  LowerCase();
  /// Retourne une copie de la chaîne de texte où toutes les occurrences de texteCherche sont remplacées par texteRemplacement.
  import String  Replace(const string texteCherche, const string texteRemplacement, bool sensibleALaCasse = false);
  /// Remplace le caractère à la position INDEX dans la chaîne de texte par NOUVEAUCARACTERE.
  import String  ReplaceCharAt(int index, char nouveauCaractere);
  /// Retourne si la chaîne de texte commence par le texte spécifié.
  import bool    StartsWith(const string commencePar, bool sensibleALaCasse = false);
  /// Retourne une partie de la chaîne de texte commençant au caractère INDEX jusqu'à LONGUEUR caractères plus loin.
  import String  Substring(int index, int longueur);
  /// Retourne une version de la chaîne de texte qui aura été coupée à partir du caractère spécifié.
  import String  Truncate(int longueur);
  /// Retourne une version majuscules de la chaîne de texte spécifiée.
  import String  UpperCase();
  /// Convertit une chaîne en nombre a virgule.
  readonly import attribute float AsFloat;
  /// Convertit la chaîne de texte en nombre entier.
  readonly import attribute int AsInt;
  /// Retourne le caractère à la position spécifiée dans la chaîne de texte.
  readonly import attribute char Chars[];
  /// Retourne la longueur de la chaîne de texte (en nombre de caractères).
  readonly import attribute int Length;
};

managed struct AudioClip;

managed struct ViewFrame {
  /// Retourne si l'image a été retournée.
  readonly import attribute bool Flipped;
  /// Retourne le numéro de vignette de cette vignette (Frame).
  readonly import attribute int Frame;
  /// Retourne/Définit le numéro d'image qu'affiche cette vignette (Frame).
  import attribute int Graphic;
  /// Retourne/Définit la séquence audio qui est liée à cette vignette (Frame).
  import attribute AudioClip* LinkedAudio;
  /// Retourne le numéro de la séquence d'animation contenant cette vignette (Frame).
  readonly import attribute int Loop;
  /// Retourne/Définit la séquence audio qui est liée à cette vignette (Frame).
  import attribute int Sound;    // $AUTOCOMPLETEIGNORE$
  /// Retourne la vitesse définie pour cette vignette (Frame).
  readonly import attribute int Speed;
  /// Retourne le numéro de vue contenant cette vignette (Frame).
  readonly import attribute int View;
};

managed struct DrawingSurface {
  /// Remplit la surface avec la couleur spécifiée.
  import void Clear(int colour=-SCR_NO_VALUE);
  /// Crée une copie de la surface actuelle.
  import DrawingSurface* CreateCopy();
  /// Dessine un cercle plein de rayon spécifié centré à (x,y) de la couleur de dessin courante.
  import void DrawCircle(int x, int y, int rayon);
  /// Dessine l'image BLOCIMAGE sur la surface aux coordonnées (x,y)
  import void DrawImage(int x, int y, int blocImage, int transparence=0, int largeur=SCR_NO_VALUE, int hauteur=SCR_NO_VALUE);
  /// Dessine une ligne depuis (x1, y1) jusqu'à (x2, y2) de la couleur en cours.
  import void DrawLine(int x1, int y1, int x2, int y2, int epaisseur=1);
  /// Dessine le message NUMERO_MESSAGE sur la surface à (X,Y), en utilisant la POLICE spécifiée. (vieilli).
  import void DrawMessageWrapped(int x, int y, int width, POLICE, int NUMERO_MESSAGE);
  /// Dessine un pixel sur la surface aux coordonnées (x,y) dans la couleur courante.
  import void DrawPixel(int x, int y);
  /// Dessine un rectangle plein dans la couleur courante avec son coin supérieur gauche à (x1,y1) et son coin inférieur droit à (x2,y2).
  import void DrawRectangle(int x1, int y1, int x2, int y2);
  /// Dessine le texte sur la surface aux coordonnées (x, y), en utilisant la police spécifiée.
  import void DrawString(int x, int y, police, const string texte, ...);
  /// Dessine le texte sur la surface à (x,y), en utilisant la largeur, la police et l'alignement spécifiés.
  import void DrawStringWrapped(int x, int y, int largeur, police, Alignment, const string texte);
  /// Dessine la surface spécifiée sur cette surface, en utilisant optionnellement une transparence.
  import void DrawSurface(DrawingSurface *surfaceADessiner, int transparence=0);
  /// Dessine un triangle plein dans la couleur en cours avec ses coins aux points (x1,y1), (x2,y2) et (x3,y3).
  import void DrawTriangle(int x1, int y1, int x2, int y2, int x3, int y3);
  /// Retourne le Numéro de Couleur AGS (AGS Colour Number) du pixel au point (x,y) de la surface.
  import int  GetPixel(int x, int y);
  /// Informe AGS que vous avez fini de dessiner sur la surface.
  import void Release();
  /// Retourne/Définit la couleur de dessin courante sur la surface (en Numéro de Couleur AGS).
  import attribute int DrawingColor;
  /// Retourne la hauteur de la surface.
  readonly import attribute int Height;
  /// Retourne/Définit si vous utilisez les coordonnées haute-résolution sur cette surface.
  import attribute bool UseHighResCoordinates;
  /// Retourne la largeur de la surface.
  readonly import attribute int Width;
};

managed struct Room {
  /// Retourne le texte de la propriété personnelle spécifée pour la pièce actuelle.
  import static String GetTextProperty(const string propriete);
  /// Retourne une surface de dessin (drawing surface) contenant l'arrière-plan de la pièce.
  import static DrawingSurface* GetDrawingSurfaceForBackground(int numeroFond=SCR_NO_VALUE);
  /// Retourne la coordonnée Y du bord inférieur du cadre de la pièce.
  readonly import static attribute int BottomEdge;
  /// Retourne la profondeur de couleurs de l'arrière-plan de la pièce.
  readonly import static attribute int ColorDepth;
  /// Retourne la hauteur de la pièce.
  readonly import static attribute int Height;
  /// Retourne la coordonnée X du bord gauche du cadre de la pièce.
  readonly import static attribute int LeftEdge;
  /// Retourne le texte du message de la pièce (vieilli).
  readonly import static attribute String Messages[];
  /// Retourne le numéro de la musique qui est jouée lorsque le joueur entre dans la pièce.
  readonly import static attribute int MusicOnLoad;
  /// Retourne le nombre d'objets dans la pièce.
  readonly import static attribute int ObjectCount;
  /// Retourne la coordonnée X du bord droit du cadre de la pièce.
  readonly import static attribute int RightEdge;
  /// Retourne la coordonnée Y du bord supérieur du cadre de la pièce.
  readonly import static attribute int TopEdge;
  /// Retourne la largeur de la pièce.
  readonly import static attribute int Width;
};

managed struct Game {
  /// Change la traduction en cours d'utilisation.
  import static bool   ChangeTranslation(const string nomNouveauFichierTraduction);
  /// Retourne true la première fois que cette fonction est appelée avec l'appel (token) spécifié.
  import static bool   DoOnceOnly(const string appel);
  /// Récupère le Numéro de Couleur AGS (AGS Colour Number) pour la couleur RVB spécifiée.
  import static int    GetColorFromRGB(int rouge, int vert, int bleu);
  ///  Retourne le nombre de vignettes (frames) dans la séquence spécifiée de la vue spécifiée.
  import static int    GetFrameCountForLoop(int vue, int sequence);
  /// Retourne le nom de ce qui se trouve à l'écran aux coordonnées (x,y). 
  import static String GetLocationName(int x, int y);
  /// Retourne le nombre de séquences dans la vue spécifiée.
  import static int    GetLoopCountForView(int vue);
  /// Retourne le numéro du modèle/de la piste en cours si le morceau actuel est de format MOD ou XM (décrépi).
  import static int    GetMODPattern();
  /// Retourne si la séquence spécifiée dans la vue spécifiée a l'option “Run the next loop after this one” (Lancer la prochaine séquence après celle-ci) activée.
  import static bool   GetRunNextSettingForLoop(int vue, int sequence);
  ///  Retourne le texte de description de l'emplacement de sauvegarde spécifié.
  import static String GetSaveSlotDescription(int blocSauvegarde);
  /// Retourne l'image (de type ViewFrame) de la vignette spécifiée dans la séquence et la vue spécifiées.
  import static ViewFrame* GetViewFrame(int vue, int sequence, int vignette);
  /// Affiche une fenêtre demandant à l'utilisateur de taper du texte, et retourne le texte tapé.
  import static String InputBox(const string message);
  /// Retourne true s'il y a une séquence audio (éventuellement du type spécifié) en cours de lecture.
  import static bool   IsAudioPlaying(AudioType audioType=SCR_NO_VALUE);
  /// Change la propriété VolumeReductionWhileSpeechPlaying du type audio (AudioType) spécifié.
  import static void   SetAudioTypeSpeechVolumeDrop(AudioType, int attenuationVolume);
  /// Change le volume par défaut du type audio (AudioType) spécifié.
  import static void   SetAudioTypeVolume(AudioType, int volume, ChangeVolumeType);
  /// Change le répertoire où les fichiers de sauvegarde du jeu sont stockés.
  import static bool   SetSaveGameDirectory(const string repertoire);
  /// Stoppe toute séquence audio en cours de lecture. (en option, le type de fichiers concernés).
  import static void   StopAudio(AudioType typeAudio=SCR_NO_VALUE);
#ifndef STRICT_AUDIO
  /// Arrête tous les fichiers audio en cours de lecture (vieilli).
  import static void   StopSound(bool sonsAmbiantsAussi=false);   // $AUTOCOMPLETEIGNORE$
#endif
  /// Retourne le nombre de personnages dans le jeu.
  readonly import static attribute int CharacterCount;
  /// Retourne le nombre de dialogues dans le jeu.
  readonly import static attribute int DialogCount;
  /// Retourne le nom du fichier qui a lancé le jeu.
  readonly import static attribute String FileName;
  /// Retourne le nombre de polices (Fonts) dans le jeu.
  readonly import static attribute int FontCount;
  /// Retourne le texte du message global spécifié. Obsoléte.
  readonly import static attribute String GlobalMessages[];
  /// Retourne/Définit la chaîne de texte globale spécifiée. Obsoléte.
  import static attribute String GlobalStrings[];
  /// Retourne le nombre d'interfaces (GUIs) dans le jeu.
  readonly import static attribute int GUICount;
  /// Retourne/définit le temps pendant lequel les actions du joueur sont ignorées après un affichage de texte.
  import static attribute int IgnoreUserInputAfterTextTimeoutMs;
  /// Retourne si le jeu est actuellement dans une cinématique pouvant être interompue.
  readonly import static attribute bool InSkippableCutscene;
  /// Retourne le nombre d'objets d'inventaire dans le jeu.
  readonly import static attribute int InventoryItemCount;
  /// Retourne/Définit le temps d'affichage minimum d'une ligne de texte, en millisecondes.
  import static attribute int MinimumTextDisplayTimeMs;
  /// Retourne le nombre de curseurs dans le jeu.
  readonly import static attribute int MouseCursorCount;
  /// Retourne/Définit le nom du jeu.
  import static attribute String Name;
  /// Retourne/Définit la police utilisée pour afficher le texte du jeu.
  import static attribute FontType NormalFont;
  /// Vous permet de savoir si le joueur est en train de passer la cinématique en cours.
  readonly import static attribute bool SkippingCutscene;
  /// Retourne/Définit la police utilisée pour le discours des personnages.
  import static attribute FontType SpeechFont;
  /// Retourne la hauteur de l'image spécifiée.
  readonly import static attribute int SpriteHeight[];
  /// Retourne la largeur de l'image spécifiée.
  readonly import static attribute int SpriteWidth[];
  /// Retourne/Définit le délai avant l'effacement automatique du texte.
  import static attribute int TextReadingSpeed;
  /// Retourne le nom du fichier de traduction actuel.
  readonly import static attribute String TranslationFilename;
  /// Retourne si le jeu utilise les coordonnées natives.
  readonly import static attribute bool UseNativeCoordinates;
  /// Retourne le nombre de vues (views) dans le jeu.
  readonly import static attribute int ViewCount;
};

managed struct Parser {
  /// Cherche motATrouver dans le dictionnaire de l'analyseur, et retourne son numéro ID.
  import static int    FindWordID(const string motATrouver);
  /// Stocke le texte spécifié pour être utilisé plus tard par Said.
  import static void   ParseText(const string texte);
  /// Vérifie si le joueur a entré le texte spécifié dans ce qui a été passé à ParseText.
  import static bool   Said(const string texte);
  /// Retourne un mot entré par le joueur non présent dans le dictionnaire du jeu.
  import static String SaidUnknownWord();
};

// standard functions
/// Affiche un message à l'écran. Il sera affiché dans une boîte de messages standard, et centré au milieu de l'écran.
import void Display(const string message, ...);
/// Affiche le texte à l'écran. Il sera affiché dans une boîte de messages standard placée aux coordonnées spécifiées.
import void DisplayAt(int x, int y, int largeur, const string message, ...);
/// Affiche le texte à l'écran. Il sera affiché dans une boîte de messages standard placée à la coordonnée Y spécifiée.
import void DisplayAtY (int y, const string message);
/// Affiche un message de l'Éditeur de Messages de la Pièce (vieilli).
import void DisplayMessage(int numeroMessage);
/// Affiche un message de l'Éditeur de Messages de la Pièce à la coordonnée Y spécifiée (vieilli).
import void DisplayMessageAtY(int numeroMessage, int y);
/// Affiche un message dans une fenêtre de texte, avec une barre de titre au dessus d'elle.
import void DisplayTopBar(int y, int couleurTexte, int couleurFond, const string titre, const string texte, ...);
/// Affiche un message de l'Éditeur de Messages de la Pièce dans une fenêtre textuelle avec un titre, utilisée comme dialogues dans les jeux SCI0 (vieilli).
import void DisplayMessageBar(int y, int couleurTexe, int couleurFond, const string titre, int message);
/// Rétablit l'état d'origine de la piéce spécifiée.
import void ResetRoom(int numeroPiece);
/// Vérifie si le joueur s'est déjà rendu dans la pièce spécifiée.
import int  HasPlayerBeenInRoom(int numeroPiece);
/// Simule un clic de la souris aux coordonnées (x,y) de l'écran, dans le mode de curseur spécifié.
import void ProcessClick(int x, int y, CursorMode);
/// Arrête le jeu et affiche une fenêtre d'erreur.
import void AbortGame(const string message, ...);
/// Quitte le jeu.
import void QuitGame(int previentUtilisateur);
/// Change la vitesse du jeu (en nombre de cycles par seconde).
import void SetGameSpeed(int cyclesParSecondes);
/// Retourne la vitesse actuelle du jeu (en nombre de cycles par seconde).
import int  GetGameSpeed();
/// Change une des options du jeu.
import int  SetGameOption(int option, int valeur);
/// Retourne le réglage actuel d'une option du jeu.
import int  GetGameOption(int option);
/// Cette fonction gère tous les services de debogage du moteur.
import void Debug(int command, int data);
/// Appelle la fonction on_call de la pièce actuelle.
import void CallRoomScript(int valeur);
/// Quitte la partie actuelle, et lance le jeu AGS spécifié à la place.
import int  RunAGSGame(const string nomFichier, int mode, int donnees);
/// Retourne la traduction du texte contenu dans la chaîne de caractères.
import string GetTranslation (const string texteOriginal);
/// Informe si le joueur utilise une traduction du jeu ou non.
import int  IsTranslationAvailable ();
/// Affiche l'interface de chargement de jeu par défaut.
import void RestoreGameDialog();
/// Affiche l'interface de sauvegarde par défaut.
import void SaveGameDialog();
/// Redémarre le jeu depuis le point de départ.
import void RestartGame();
/// Sauvegarde la progression de la partie actuelle dans l'emplacement spécifié.
import void SaveGameSlot(int emplacement, const string description);
/// Charge la partie sauvegardée à l'emplacement spécifié.
import void RestoreGameSlot(int emplacement);
/// Supprime la sauvegarde contenue dans l'emplacement spécifié.
import void DeleteSaveSlot(int emplacement);
/// Définit la position actuelle du jeu comme nouveau point de départ du jeu.
import void SetRestartPoint();
/// Retourne le type de l'élément qui se trouve aux coordonnées (x,y) 
import LocationType GetLocationType(int x, int y);
/// Retourne le numéro de la zone de déplacement à l'écran aux coordonnées (X,Y).
import int  GetWalkableAreaAt(int ecranX, int ecranY);
/// Retourne le niveau de mise à l'échelle de la pièce aux coordonnées (x,y).
import int  GetScalingAt (int x, int y);
/// Retourne la valeur de la propriété personnelle spécifiée pour la pièce actuelle.
import int  GetRoomProperty(const string property);
/// Fige la caméra de façon à ce que le coin gauche supérieur de l'écran corresponde aux coordonnées (x,y) de la pièce.
import void SetViewport(int x, int y);
/// Débloque la caméra, l'autorisant à se déplacer automatiquement pour suivre les déplacements du joueur.
import void ReleaseViewport();
/// Retourne le décalage X de la caméra par rapport à la pièce.
import int  GetViewportX();
/// Retourne le décalage Y de la caméra par rapport à la pièce.
import int  GetViewportY();
/// Retourne 1 si le jeu est actuellement en pause.
import int  IsGamePaused();
import int  GetGraphicalVariable (const string nomVariable);
import void SetGraphicalVariable (const string nomVariable, int valeur);
/// Désactive l'interface du joueur et affiche le curseur d'attente.
import void DisableInterface();
/// Réactive l'interface du joueur.
import void EnableInterface();
/// Retourne si l'interface du joueur est actuellement disponible.
import int  IsInterfaceEnabled();

struct Mouse {
  /// Change l'image du mode de curseur spécifié pour celui contenu à l'emplacement spécifié.
  import static void ChangeModeGraphic(CursorMode, int blocImage);
  /// Change de façon permanente le point de réaction du curseur pour le point aux coordonnées (x,y) de l'image du curseur.
  import static void ChangeModeHotspot(CursorMode, int x, int y);
  /// Définit la vue (view) du mode de curseur spécifié.
  import static void ChangeModeView(CursorMode, int vue);
  /// Désactive le mode de curseur spécifié.
  import static void DisableMode(CursorMode);
  /// Réactive le mode de curseur spécifié.
  import static void EnableMode(CursorMode);
  /// Retourne le numéro de l'image utilisée pour le mode de curseur spécifié.
  import static int  GetModeGraphic(CursorMode);
  /// Vérifie si l'utilisateur maintient actuellement enfoncé le bouton de la souris spécifié.
  import static bool IsButtonDown(MouseButton);
  /// Garde en mémoire le curseur actuel de la souris, et le restaure lorsque la souris quitte la zone interactive, l'objet ou le personnage actuel.
  import static void SaveCursorUntilItLeaves();
  /// Passe le curseur de la souris au prochain mode disponible.
  import static void SelectNextMode();
  /// Restreint la zone d'écran dans laquelle la souris peut se déplacer.
  import static void SetBounds(int gauche, int haut, int droite, int bas);
  /// Place le pointeur de la souris aux coordonnées d'écran (X,Y).
  import static void SetPosition(int x, int y);
  /// Mettra à jour les variables globales “mouse.x” et “mouse.y” selon la position actuelle de la souris.
  import static void Update();
  /// Redonne son apparence normale au curseur de la souris, celle définie par défaut pour le mode de curseur actuel.
  import static void UseDefaultGraphic();
  /// Change l'apparence du curseur de la souris pour celle du mode de curseur spécifié.
  import static void UseModeGraphic(CursorMode);
  /// Retourne/Définit le mode actuel du curseur de la souris.
  import static attribute CursorMode Mode;
  /// Retourne/Définit si le curseur de la souris est visible.
  import static attribute bool Visible;
  /// Retourne la position actuelle du curseur.
  readonly int  x,y;
};

#ifndef STRICT_STRINGS
// OLD STRING BUFFER FUNCTIONS
import void SetGlobalString(int IDchaine, const string nouvelleValeur);
import void GetGlobalString(int IDchaine, string tampon);
import void InputBox(const string affiche, string tampon);
import int  GetTranslationName (string tampon);
import int  GetSaveSlotDescription(int slot, string tampon);
import void GetLocationName(int x, int y, string tampon);
import void GetRoomPropertyText(const string propriete, string tampon);
// string functions
import void StrCat(string principale, const string newbit);
import int  StrCaseComp(const string txt1, const string txt2);
import int  StrComp(const string txt1, const string txt2);
import void StrCopy(string destination, const string source);
import void StrFormat(string destination, const string format, ...);
import int  StrLen(const string);
import int  StrGetCharAt (const string, int position);
import void StrSetCharAt (string, int position, int nouveauCaractere);
import void StrToLowerCase (string);
import void StrToUpperCase (string);
import int  StrContains (const string texte, const string cherche);
import void ParseText (const string);
import int  SaidUnknownWord (string tampon);
import void GetMessageText (int numeroMessage, string tampon);
import int  StringToInt(const string);
#define strcmp StrComp
#define strlen StrLen
#define strcpy StrCopy
#define strcat StrCat
#endif

import int  Said (const string text);

#ifndef STRICT
// OBSOLETE STUFF
#define SPEECH_SIERRA 1
#define SPEECH_SIERRABKGRND 2
#define SPEECH_LUCASARTS 0
#define SPEECH_FULLSCREEN 3
#define MODE_WALK   0
#define MODE_LOOK   1
#define MODE_USE    2
#define MODE_TALK   3
#define MODE_USEINV 4
#define MODE_PICKUP 5
#define TRANSITION_FADE     0
#define TRANSITION_INSTANT  1
#define TRANSITION_DISSOLVE 2
#define TRANSITION_BOXOUT   3
#define TRANSITION_CROSSFADE 4
#define ALIGN_LEFT    1
#define ALIGN_CENTRE  2
#define ALIGN_CENTER  2
#define ALIGN_RIGHT   3
#define CHAR_IGNORESCALING 1
#define CHAR_NOINTERACTION 4
#define CHAR_NODIAGONAL    8
#define CHAR_IGNORELIGHT   32
#define CHAR_NOTURNING     64
#define CHAR_IGNOREWALKBEHINDS 128
#define CHAR_WALKTHROUGH       512
#define CHAR_SCALEMOVESPEED    1024
#define LEFT  1
#define RIGHT 2
#define MIDDLE 3
#define LEFTINV  5
#define RIGHTINV 6
#define WHEELNORTH  8
#define WHEELSOUTH  9

import int  GetHotspotAt(int x, int y);
import int  GetObjectAt(int x,int y);
import int  GetCharacterAt(int x,int y);
import int  GetRegionAt (int x, int y);
import int  GetInvAt(int x,int y);

import int  CreateGraphicOverlay(int x, int y, int bloc, bool transparent);
import int  CreateTextOverlay(int x, int y, int largeur, FontType, int couleur, const string texte, ...);
import void SetTextOverlay(int IDcalque, int x, int y, int largeur, FontType, int couleur, const string texte, ...);
import void RemoveOverlay(int IDcalque);
import int  MoveOverlay(int IDcalque, int x, int y);
import int  IsOverlayValid(int IDcalque);

import int  InventoryScreen();
// mouse functions
import void ChangeCursorGraphic(int mode, int bloc);
import void ChangeCursorHotspot(int mode, int x, int y);
import int  GetCursorMode();
import void SetCursorMode(CursorMode);
import void SetNextCursorMode();
import void SetDefaultCursor();
import void SetMouseCursor(CursorMode);
import void SetMouseBounds(int gauche, int haut, int droite, int bas);
import void SetMousePosition(int x, int y);
import void ShowMouseCursor();
import void HideMouseCursor();
import void RefreshMouse();
import void DisableCursorMode(CursorMode);
import void EnableCursorMode(CursorMode);
import void SaveCursorForLocationChange();
import int  IsButtonDown(MouseButton);
// Obsolete functions for objects
import void MergeObject(int objet);
import void SetObjectTint(int objet, int rouge, int vert, int bleu, int saturation, int luminosite);
import void RemoveObjectTint(int objet);
import void StopObjectMoving(int objet);
import void RunObjectInteraction (int objet, CursorMode);
import int  GetObjectProperty(int objet, const string propriete);
import void GetObjectPropertyText(int objet, const string propriete, string tampon);
import void AnimateObject(int objet, int sequence, int delai, int repetition);
import void AnimateObjectEx(int objet, int sequence, int delai, int repetition, int direction, int bloquant);
import void ObjectOff(int objet);
import void ObjectOn(int objet);
import void SetObjectBaseline(int objet, int ligneDeBase);
import int  GetObjectBaseline(int objet);
import void SetObjectFrame(int objet, int vue, int sequence, int vignette);
import void SetObjectGraphic(int objet, int blocImage);
import void SetObjectView(int objet, int vue);
import void SetObjectTransparency(int objet, int taux);
import void MoveObject(int objet, int x, int y, int vitesse);
import void MoveObjectDirect(int objet, int x, int y, int vitesse);
import void SetObjectPosition(int objet, int x, int y);
import int  AreObjectsColliding(int objet1, int objet2);
import void GetObjectName(int objet, string tampon);
import int  GetObjectX(int objet);
import int  GetObjectY(int objet);
import int  GetObjectGraphic(int objet);
import int  IsObjectAnimating(int objet);
import int  IsObjectMoving(int objet);
import int  IsObjectOn (int objet);
import void SetObjectClickable(int objet, int cliquable);
import void SetObjectIgnoreWalkbehinds (int objet, int ignore);

// Obsolete Character functions
import void AddInventory(int objet);
import void LoseInventory(int objet);
import void SetActiveInventory(int objet);
import void NewRoom(int numeroPiece);
import void NewRoomEx(int numeroPiece, int x, int y);
import void NewRoomNPC(CHARID, int numeroPiece, int x, int y);
import int  GetCharacterProperty(CHARID, const string propriete);
import void GetCharacterPropertyText(CHARID, const string propriete, string tampon);
import void RunCharacterInteraction (CHARID, CursorMode);
import void DisplaySpeech (CHARID, const string message, ...);
import int  DisplaySpeechBackground(CHARID, const string message);
import void DisplaySpeechAt (int x, int y, int largeur, CHARID, const string message);
import void DisplayThought (CHARID, const string message, ...);
import void FollowCharacter(CHARID mouton, CHARID berger);
import void FollowCharacterEx(CHARID mouton, CHARID berger, int distance, int ardeur);
import void SetPlayerCharacter(CHARID);
import void AddInventoryToCharacter(CHARID, int objet);
import void LoseInventoryFromCharacter(CHARID, int objet);
import void AnimateCharacter (CHARID, int sequence, int delai, int repetition);
import void AnimateCharacterEx (CHARID, int sequence, int delai, int repetition, int direction, int bloquant);
import void MoveCharacter(CHARID, int x, int y);
import void MoveCharacterDirect(CHARID, int x, int y);
import void MoveCharacterPath(CHARID, int x, int y);
import void MoveCharacterStraight(CHARID, int x, int y);
import void MoveCharacterToHotspot(CHARID, int zoneInteractive);
import void MoveCharacterToObject(CHARID, int objet);
import void MoveCharacterBlocking(CHARID, int x, int y, int direct);
import void MoveToWalkableArea(CHARID);
import void FaceCharacter(CHARID, CHARID aRegarder);
import void FaceLocation(CHARID, int x, int y);
import void SetCharacterView(CHARID, int vue);
import void SetCharacterViewEx(CHARID, int vue, int sequence, int alignement);
import void SetCharacterViewOffset(CHARID, int vue, int x_decalage, int y_decalage);
import void SetCharacterFrame(CHARID, int vue, int sequence, int vignette);
import void ReleaseCharacterView(CHARID);
import void ChangeCharacterView(CHARID, int vue);
import void SetCharacterSpeechView(CHARID, int vue);
import void SetCharacterBlinkView(CHARID, int vue, int intervalle);
import void SetCharacterIdle(CHARID, int vueAttente, int delai);
import void StopMoving(CHARID);
import int  AreCharObjColliding(CHARID, int objet);
import int  AreCharactersColliding(CHARID, CHARID);
import void SetCharacterSpeed(CHARID, int vitesse);
import void SetCharacterSpeedEx(CHARID, int x_vitesse, int y_vitesse);
import void SetTalkingColor(CHARID, int couleur);
import void SetCharacterTransparency(CHARID, int transparence);
import void SetCharacterClickable(CHARID, int cliquable);
import void SetCharacterBaseline(CHARID, int ligneDeBase);
import void SetCharacterIgnoreLight (CHARID, int ignoreLuminosite);
import void SetCharacterIgnoreWalkbehinds (CHARID, int ignoreWBs);
import void SetCharacterProperty (CHARID, int propriete, int nouvelleValeur);
import int  GetPlayerCharacter();

// obsolete file I/O functions
#define FILE_WRITE "wb"
#define FILE_APPEND "ab"
#define FILE_READ  "rb"
#define WRITE FILE_WRITE
#define READ  FILE_READ
import int  FileOpen(const string pointeurFichier, const string mode);
import void FileWrite(int pointeurFichier, const string texte);
import void FileWriteRawLine(int pointeurFichier, const string texte);
import void FileRead(int pointeurFichier, string tampon);
import void FileClose(int pointeurFichier);
import void FileWriteInt(int pointeurFichier, int valeur);
import int  FileReadInt(int pointeurFichier);
import char FileReadRawChar(int pointeurFichier);
import void FileWriteRawChar(int pointeurFichier, int valeur);
import int  FileReadRawInt(int pointeurFichier);
import int  FileIsEOF(int pointeurFichier);
import int  FileIsError(int pointeurFichier);

// obsolete hotspot/region funcs
import void DisableHotspot(int zoneInteractive);
import void EnableHotspot(int zoneInteractive);
import void GetHotspotName(int zoneInteractive, string tampon);
import int  GetHotspotPointX(int zoneInteractive);
import int  GetHotspotPointY(int zoneInteractive);
import int  GetHotspotProperty(int zoneInteractive, const string propriete);
import void GetHotspotPropertyText(int zoneInteractive, const string propriete, string tampon);
import void RunHotspotInteraction (int zoneInteractive, CursorMode);
import void DisableRegion(int region);
import void EnableRegion(int region);
import void RunRegionInteraction (int region, int evenement);
import void SetAreaLightLevel(int zone, int niveauLuminosite);
import void SetRegionTint(int zone, int rouge, int vert, int bleu, int taux);

// obsolete inv functions
import int  GetInvProperty(int objet, const string propriete);
import void GetInvPropertyText(int objet, const string propriete, string tampon);
import void GetInvName(int objet, string tampon);
import int  GetInvGraphic(int objet);
import void SetInvItemPic(int objet, int blocImage);
import void SetInvItemName(int objet, const string nom);
import int  IsInventoryInteractionAvailable (int objet, CursorMode);
import void RunInventoryInteraction (int objet, CursorMode);

import int  GetTime(int quelValeur);
import int  GetRawTime();

import int  LoadSaveSlotScreenshot(int blocSauvegarde, int largeur, int hauteur);
import int  LoadImageFile(const string nomFichier);
import void DeleteSprite(int blocImage);

import void SetSpeechFont(FontType);
import void SetNormalFont(FontType);

#define GP_SPRITEWIDTH   1
#define GP_SPRITEHEIGHT  2
#define GP_NUMLOOPS      3
#define GP_NUMFRAMES     4
#define GP_ISRUNNEXTLOOP 5
#define GP_FRAMESPEED    6
#define GP_FRAMEIMAGE    7
#define GP_FRAMESOUND    8
#define GP_NUMGUIS       9
#define GP_NUMOBJECTS    10
#define GP_NUMCHARACTERS 11
#define GP_NUMINVITEMS   12
#define GP_ISFRAMEFLIPPED 13

import int  GetGameParameter(int parametre, int donnee1=0, int donnee2=0, int donnee3=0);
import void SetDialogOption(int sujet, int option, DialogOptionState);
import DialogOptionState GetDialogOption(int sujet, int option);
import void RunDialog(int sujet);

// obsolete raw draw stuff
import void RawClearScreen (int couleur);
import void RawDrawCircle (int x, int y, int rayon);
import void RawDrawImage (int x, int y, int blocImage);
import void RawDrawImageOffset(int x, int y, int blocImage);
import void RawDrawImageResized(int x, int y, int blocImage, int largeur, int hauteur);
import void RawDrawImageTransparent(int x, int y, int blocImage, int transparence);
import void RawDrawLine (int x1, int y1, int x2, int y2);
import void RawDrawRectangle (int x1, int y1, int x2, int y2);
import void RawDrawTriangle (int x1, int y1, int x2, int y2, int x3, int y3);
import void RawPrint (int x, int y, const string message, ...);
import void RawPrintMessageWrapped (int x, int y, int largeur, FontType, int numeroMessage);
import void RawSetColor(int couleur);
import void RawSetColorRGB(int rouge, int vert, int bleu);
import void RawDrawFrameTransparent (int vignette, int transparence);
import void RawSaveScreen ();
import void RawRestoreScreen ();
// obsolete RawRestoreScreenTinted(int rouge, int vert, int bleu, int opacite);

#endif

/// Retourne la largeur qu'occupera l'affichage à l'écran du texte dans la police spécifié, sur une seule ligne.
import int  GetTextWidth(const string texte, FontType);
/// Calcule la hauteur à l'écran que prendra l'affichage du texte en utilisant la police spécifié dans la largeur spécifiée.
import int  GetTextHeight(const string texte, FontType, int largeur);
/// Ajoute la valeure spécifiée au score du joueur, en jouant l'eventuel bruitage approprié.
import void GiveScore(int points);
/// Met à jour l'affichage de l'inventaire à l'écran.
import void UpdateInventory();
/// À utiliser uniquement depuis un "dialog_request", dit à AGS de ne pas revenir au dialogue.
import void StopDialog();
/// Vérifie si deux personnages ou objets sont superposés à l'écran.
import int  AreThingsOverlapping(int chose1, int chose2);
/// Détermine si les voix et/ou le texte des discours sont utilisés dans le jeu.
import void SetVoiceMode(eVoiceMode);
/// Définit comment le joueur peut passer les discours.
import void SetSkipSpeech(int modePassage);
/// Change la façon dont le texte de discours est affiché.
import void SetSpeechStyle(eSpeechStyle);
/// Lance le timer qui sera décompté à chaque cycle du jeu (normalement 40 fois par seconde), jusqu'à la fin du DELAI.
import void SetTimer(int IDtimer, int delai);
/// Vérifie si le timer est dépassé, et renvoie true lors de la première verification (uniquement).
import bool IsTimerExpired(int IDtimer);
/// Définit ce qui se passe si l'utilisateur réduit la fenêtre du jeu.
import void SetMultitaskingMode (int mode);
/// Convertit la valeur décimale (à virgule) en valeur entière.
import int  FloatToInt(float valeur, RoundDirection=eRoundDown);
/// Convertit la valeur entière entrée en nombre à virgule.
import float IntToFloat(int valeur);
// File I/O
enum FileMode {
  eFileRead = 1,
  eFileWrite = 2,
  eFileAppend = 3
};
managed struct File {
  /// Supprime le fichier spécifié du disque.
  import static bool Delete(const string nomFichier);   // $AUTOCOMPLETESTATICONLY$
  /// Vérifie que le fichier spécifié existe sur l'ordinateur.
  import static bool Exists(const string nomFichier);   // $AUTOCOMPLETESTATICONLY$
  /// Ouvre un fichier sur le disque dur pour lecture ou écriture.
  import static File *Open(const string nomFichier, FileMode);   // $AUTOCOMPLETESTATICONLY$
  /// Ferme le fichier, et sauve les changements sur le disque.
  import void Close();
  /// Lit un entier depuis le fichier, et le retourne.
  import int  ReadInt();
  /// Lit un caractère brut (1 octet) depuis le fichier et le retourne.
  import int  ReadRawChar();
  /// Lit un entier 32-bits depuis le fichier et le retourne.
  import int  ReadRawInt();
#ifndef STRICT_STRINGS
  import void ReadRawLine(string buffer);
  import void ReadString(string buffer);
#endif
  /// Lit une ligne de texte brut depuis le fichier et la retourne.
  import String ReadRawLineBack();
  /// Lit une chaîne de caractères depuis un fichier précédemment ouvert avec File.Open, et la retourne.
  import String ReadStringBack();
  /// Écrit le nombre dans le fichier.
  import void WriteInt(int nombre);
  /// Écrit un simple caractère dans le fichier en format texte brut.
  import void WriteRawChar(int valeur);
  /// Écrit du texte dans le fichier en format texte brut.
  import void WriteRawLine(const string texte);
  /// Écrit le texte dans le fichier préalablement ouvert avec File.Open.
  import void WriteString(const string texte);
  /// Vérifie si le fichier spécifié a été entièrement lu.
  readonly import attribute bool EOF;
  /// Retourne si une erreur est survenue en lisant depuis le fichier spécifié ou en écrivant dedans.
  readonly import attribute bool Error;
  int reserved[2];   // $AUTOCOMPLETEIGNORE$
};

managed struct InventoryItem {
  /// Retourne l'objet d'inventaire aux coordonnées d'écran spécifiées.
  import static InventoryItem* GetAtScreenXY(int x, int y);    // $AUTOCOMPLETESTATICONLY$
  /// Retourne la valeur de la propriété personnelle numérique de l'objet d'inventaire.
  import int  GetProperty(const string propriete);
  /// Retourne le texte de la propriété personnelle textuelle de l'objet d'inventaire.
  import String GetTextProperty(const string propriete);
  /// Vérifie si une interaction est prévue pour un clic sur l'objet d'inventaire avec le mode de curseur spécifié.
  import int  IsInteractionAvailable(CursorMode);
  /// Lance l'interaction associée à l'objet d'inventaire pour le mode de curseur (CursorMode) spécifié.
  import void RunInteraction(CursorMode);
  /// Retourne/Définit l'image du curseur de l'objet d'inventaire.
  import attribute int  CursorGraphic;
  /// Retourne/Définit l'image de l'objet d'inventaire.
  import attribute int  Graphic;
  /// Retourne le numéro d'identification (ID) de l'objet d'inventaire.
  readonly import attribute int ID;
  /// Retourne/Définit le nom de l'objet d'inventaire.
  import attribute String Name;
#ifndef STRICT_STRINGS
  import void GetName(string buffer);
  import void GetPropertyText(const string property, string buffer);
  import void SetName(const string newName);
#endif
  int reserved[2];   // $AUTOCOMPLETEIGNORE$
};

managed struct Overlay {
  /// Crée un calque sur l'écran contenant une copie de l'image spécifiée.
  import static Overlay* CreateGraphical(int x, int y, int bloc, bool transparent);  // $AUTOCOMPLETESTATICONLY$
  /// Crée un calque à l'écran contenant le texte que vous passez à la position spécifiée.
  import static Overlay* CreateTextual(int x, int y, int largeur, FontType, int couleur, const string texte, ...);  // $AUTOCOMPLETESTATICONLY$
  /// Spécifie le texte affiché par le calque.
  import void SetText(int largeur, FontType, int couleur, const string texte, ...);
  /// Efface le calque spécifié de l'écran.
  import void Remove();
  /// Vérifie si le calque est actuellement affiché ou non.
  readonly import attribute bool Valid;
  /// Retourne/Définit la coordonnée d'affichage X du coin superieur gauche du calque.
  import attribute int X;
  /// Retourne/Définit la coordonnée d'affichage Y du coin superieur gauche du calque.
  import attribute int Y;
};

managed struct DynamicSprite {
  /// Crée une nouvelle image dynamique vierge de la taille spécifiée.
  import static DynamicSprite* Create(int largeur, int hauteur, bool possedeCanalAlpha=false);    // $AUTOCOMPLETESTATICONLY$
  /// Crée une image dynamique contenant une copie de l'image d'arrière-plan de la pièce.
  import static DynamicSprite* CreateFromBackground(int vignette=SCR_NO_VALUE, int x=SCR_NO_VALUE, int y=SCR_NO_VALUE, int largeur=SCR_NO_VALUE, int hauteur=SCR_NO_VALUE);    // $AUTOCOMPLETESTATICONLY$
  /// Crée une image dynamique contenant une copie de la portion spécifiée de la surface de dessin (drawing surface).
  import static DynamicSprite* CreateFromDrawingSurface(DrawingSurface* surface, int x, int y, int largeur, int hauteur);    // $AUTOCOMPLETESTATICONLY$
  /// Crée une nouvelle image dynamique contenant une copie de l'image spécifiée.
  import static DynamicSprite* CreateFromExistingSprite(int bloc, bool preserverCanalAlpha=0);    // $AUTOCOMPLETESTATICONLY$
  /// Crée une image dynamique à partir du fichier image spécifié (BMP ou PCX).
  import static DynamicSprite* CreateFromFile(const string nomFichier);              // $AUTOCOMPLETESTATICONLY$
  /// Charge la capture d'écran de la partie sauvée à l'emplacement BLOCSAUVEGARDE sous la forme d'une image dynamique.
  import static DynamicSprite* CreateFromSaveGame(int BLOCSAUVEGARDE, int largeur, int hauteur);  // $AUTOCOMPLETESTATICONLY$
  /// Crée un nouvel objet DynamicSprite contenant une copie de la capture d'écran actuelle.
  import static DynamicSprite* CreateFromScreenShot(int largeur=0, int hauteur=0);  // $AUTOCOMPLETESTATICONLY$
  /// Agrandit la taille de l'image dynamique, sans en changer l'échelle.
  import void ChangeCanvasSize(int largeur, int hauteur, int x, int y);
  /// Copie le masque de transparence depuis l'image de numéro spécifié vers l'image dynamique.
  import void CopyTransparencyMask(int numeroImage);
  /// Rogne l'image à largeur x hauteur, en commençant aux coordonnées spécifiées.
  import void Crop(int x, int y, int largeur, int hauteur);
  /// Supprime l'image dynamique de la mémoire.
  import void Delete();
  /// Effectue une rotation de l'image dynamique selon le sens spécifié.
  import void Flip(eFlipDirection);
  /// Renvoie la surface de dessin de l'image dynamique.
  import DrawingSurface* GetDrawingSurface();
  /// Redimensionne l'image dynamique.
  import void Resize(int largeur, int hauteur);
  /// Effectue une rotation sur l'image avec l'angle spécifié (en degré).
  import void Rotate(int angle, int largeur=SCR_NO_VALUE, int hauteur=SCR_NO_VALUE);
  /// Sauvegarde l'image dynamique dans le fichier spécifié au format BMP.
  import int  SaveToFile(const string nomFichier);
  /// Teinte de façon permanente l'image dynamique pour la couleur spécifié (rouge, vert, bleu) avec la saturation et la luminosité spécifiées.
  import void Tint(int rouge, int vert, int bleu, int saturation, int luminosite);
  /// Retourne la profondeur de couleurs de l'image dynamique.
  readonly import attribute int ColorDepth;
  /// Retourne le numéro de l'emplacement dans lequel l'image dynamique est contenue.
  readonly import attribute int Graphic;
  /// Retourne la hauteur de l'image dynamique.
  readonly import attribute int Height;
  /// Retourne la largeur de l'image dynamique.
  readonly import attribute int Width;
};

// Palette FX
/// Passe d'un écran noir à un affichage normal selon la vitesse spécifiée.
import void FadeIn(int vitesse);
/// Noircit totalement l'écran en fondu selon la vitesse spécifiée.
import void FadeOut(int vitesse);
/// Les indices  de début à fin de la palette sont décalés d'un bloc en cycle (jeux en 256 couleurs uniquement).
import void CyclePalette(int start, int end);
/// Change les valeurs RGB du bloc spécifié de la palette (jeux en 256 couleurs uniquement).
import void SetPalRGB(int bloc, int rouge, int vert, int bleu);
/// Applique les changements que vous avez effectués sur la palette du jeu (jeux en 256 couleurs uniquement).
import void UpdatePalette();
/// Teinte tout l'écran avec la couleur RVB spécifiée.
import void TintScreen (int rouge, int vert, int bleu);
/// Teinte tous les objets et personnages à l'écran selon la couleure RVB spécifiée, avec la saturation et la luminosité spécifiées.
import void SetAmbientTint(int rouge, int vert, int bleu, int saturation, int luminosite);
/// Retourne un nombre entier aléatoire entre 0 et max.
import int  Random(int max);
/// Fixe l'arrière-plan affiché au numéro spécifié.
import void SetBackgroundFrame(int numeroImage);
/// Retourne le numéro de l'arrière-plan actuellement affiché.
import int  GetBackgroundFrame();
/// Secoue l'écran avec la force spécifiée.
import void ShakeScreen(int amount);
/// Secoue l'écran sans mettre le jeu en pause.
import void ShakeScreenBackground(int vitesse, int force, int duree);
/// Définit le style de transition entre les pièces.
import void SetScreenTransition(TransitionStyle);
/// Définit le style de la prochaine transition entre les pièces.
import void SetNextScreenTransition(TransitionStyle);
/// Définit la couleur des transitions d'écrans selon la valeure RVB spécifiée.
import void SetFadeColor(int rouge, int vert, int bleu);
/// Vérifie si une interaction serait déclenchée lors d'un clic à l'écran aux coordonnées spécifiées avec le mode de curseur MODE.
import int  IsInteractionAvailable (int x, int y, Mode);
/// Désactive la zone de déplacement spécifiée dans la pièce actuelle.
import void RemoveWalkableArea(int zone);
/// Réactive la zone de déplacement spécifiée.
import void RestoreWalkableArea(int zone);
/// Change le niveau de mise à échelle de la zone de déplacement spécifiée.
import void SetAreaScaling(int zone, int min, int max);
/// Désactive toutes les interactions au niveau du sol, et de façon optionnelle les niveaux d'éclairage et teintes de la zone.
import void DisableGroundLevelAreas(int desactiverTeintes);
/// Réactive toutes les interactions au sol, niveaux d'éclairages et teintes de la zone.
import void EnableGroundLevelAreas();
/// Donne à la zone couvrante (Walkbehind area) spécifiée une nouvelle ligne de base (baseline).
import void SetWalkBehindBase(int zone, int ligneDeBase);
/// Cette fonction vous permet de jouer et de contrôler un CD audio dans votre jeu.
import int  CDAudio(eCDAudioFunction, int donnees);
/// Joue une animation FLI/FLC.
import void PlayFlic(int numeroFLC, int options);
/// Joue une vidéo AVI/MPG selon le mode spécifié.
import void PlayVideo(const string nomDuFichier, VideoSkipStyle, int mode);

#ifndef STRICT_AUDIO
// **** OLD MUSIC/SOUND FUNCTIONS ****
/// Joue le morceau spécifié.
import void PlayMusic(int numeroMusique);
/// Jouera la morceau spécifié lorsque celui en cours de lecture sera terminé.
import void PlayMusicQueued(int numeroMusique);
/// Joue une piste MIDI en sourdine. Ceci vous permet de faire dépendre des évenements de la position d'un MIDI.
import void PlaySilentMIDI(int numeroMusique);
/// Joue le fichier MP3 ou OGG spécifié non inclus dans les ressources natives du jeu.
import void PlayMP3File(const string nomFichier);
/// Entame la lecture du son de numéro spécifié.
import int  PlaySound(int numeroSon);
/// Entame la lecture du son de numéro spécifié sur le canal spécifié.
import void PlaySoundEx(int numeroSon, int canal);
/// Entame la lecture en boucle d'un son ambiant.
import void PlayAmbientSound (int canal, int son, int volume, int x, int y);
/// Arrête la lecture d'un son ambiant.
import void StopAmbientSound (int canal);
/// Retourne le numéro de la musique en cours de lecture.
import int  GetCurrentMusic();
/// Détermine si les pistes musicales devraient jouer en boucle.
import void SetMusicRepeat(int repetition);
/// Change l'équilibreur de volume des musiques de la pièce actuelle.
import void SetMusicVolume(int volume);
/// Change le volume des sons.
import void SetSoundVolume(int volume);
/// Change le volume des musiques.
import void SetMusicMasterVolume(int volume);
/// Change le volume de toutes les musiques et sons digitaux.
import void SetDigitalMasterVolume(int volume);
/// Se place au modèle (pattern) spéicifié dans un fichier MOD/XM.
import void SeekMODPattern(int modele);
/// Retourne si du son est en cours de lecture sur le canal spécifié.
import int  IsChannelPlaying(int canal);
/// Retourne si un effet sonore est en cours de lecture ou non.
import int  IsSoundPlaying();
/// Rertourne si la musique de fond est en cours de lecture ou non.
import int  IsMusicPlaying();
/// Retourne le rythme (beat) actuel du morceau MIDI.
import int  GetMIDIPosition();
/// Se place au rythme (beat) spécifié du morceau MIDI.
import void SeekMIDIPosition(int position);
/// Retourne la position actuelle du morceau MP3 ou OGG en cours de lecture.
import int  GetMP3PosMillis();
/// Se place à position spécifiée dans le morceau MP3 ou OGG en cours de lecture.
import void SeekMP3PosMillis(int position);
/// Change le volume du canal sonore spécifié.
import void SetChannelVolume(int canal, int volume);
/// Arrête le son en cours sur le canal spécifié.
import void StopChannel(int canal);
/// Arrête la musique en cours.
import void StopMusic();
// **** END OLD MUSIC/SOUND FUNCTIONS ****
#endif

import int  IsVoxAvailable();
/// Change le volume sonore des voix.
import void SetSpeechVolume(int volume);
/// Retourne si un fichier MUSIC.VOX est détécté par le jeu.
import int  IsMusicVoxAvailable();
/// Prend une capture d'écran et la sauve sur le disque.
import int  SaveScreenShot(const string nomDuFichier);
/// Met le jeu en pause. (Stoppe le processus de la machine, les animations et déplacements du personnage, etc.)
import void PauseGame();
/// Reprend le jeu après une pause.
import void UnPauseGame();
/// Marque une pause dans l'exécution du script jusqu'à la fin du temps spécifié
import void Wait(int sequenceAttente);
/// Marque une pause dans l'exécution du script jusqu'à la fin du temps spécifié, ou bien si une touches est enfoncée.
import int  WaitKey(int sequencesAttente);
/// Marque une pause dans l'exécution du script jusqu'à la fin du temps spécifié, ou bien si une touches est enfoncée, ou bien si un clic est réalisé.
import int  WaitMouseKey(int sequencesAttente);
/// Vérifie si la touche du clavier spécifiée est actuellement pressée.
import bool IsKeyPressed(eKeyCode);
import void SetGlobalInt(int globalInt, int valeur);
import int  GetGlobalInt(int globalInt);
import void FlipScreen(int way);
/// Saute la séquence de déplacement du personnage spécifié.
import void SkipUntilCharacterStops(CHARID);
/// Marque le début d'une cinématique.
import void StartCutscene(CutsceneSkipType);
/// Marque la fin d'une cinématique.
import int  EndCutscene();
/// Empéche l'accomplissement d'autres événements associés à ce déclencheur.
import void ClaimEvent();
// Change le GUI utilisé comme fenêtre de texte pour le nouveau GUI spécifié.
import void SetTextWindowGUI (int gui);
import int  FindGUIID(const string);  // $AUTOCOMPLETEIGNORE$

#ifndef STRICT
// Obsolete GUI functions
import void SetInvDimensions(int width, int height);
import int  GetGUIAt (int x, int y);
import int  GetGUIObjectAt (int x, int y);
import void InterfaceOn(int gui);   // $AUTOCOMPLETEIGNORE$
import void InterfaceOff(int gui);  // $AUTOCOMPLETEIGNORE$
//import void GUIOn (int gui);   // this being here makes the autocomplete recognise it
//import void GUIOff (int gui);
import void SetGUIPosition(int gui, int x, int y);
import void SetGUISize(int gui, int width, int height);
import void CentreGUI(int gui);
import int  IsGUIOn (int gui);
import void SetGUIBackgroundPic (int gui, int spriteSlot);
import void SetGUITransparency(int gui, int amount);
import void SetGUIClickable(int gui, int clickable);
import void SetGUIZOrder(int gui, int z);
#define GUIOn InterfaceOn
#define GUIOff InterfaceOff

import void SetGUIObjectEnabled(int gui, int object, int enable);
import void SetGUIObjectPosition(int gui, int object, int x, int y);
import void SetGUIObjectSize(int gui, int object, int width, int height);
import void SetLabelColor(int gui, int object, int colour);
import void SetLabelText(int gui, int object, const string text);
import void SetLabelFont(int gui, int object, FontType);
import void SetButtonText(int gui, int object, const string text);
import void SetButtonPic(int gui, int object, int which, int spriteSlot);
import int  GetButtonPic(int gui, int object, int which);
import void AnimateButton(int gui, int object, int view, int loop, int delay, int repeat);
import void SetSliderValue(int gui, int object, int value);
import int  GetSliderValue(int gui, int object);
import void SetTextBoxFont(int gui, int object, FontType);
import void GetTextBoxText(int gui, int object, string buffer);
import void SetTextBoxText(int gui, int object, const string text);
import void ListBoxClear(int gui, int object);
import void ListBoxAdd(int gui, int object, const string text);
import int  ListBoxGetSelected(int gui, int object);
import void ListBoxGetItemText(int gui, int object, int listIndex, string buffer);
import void ListBoxSetSelected(int gui, int object, int listIndex);
import void ListBoxSetTopItem (int gui, int object, int listIndex);
import void ListBoxDirList (int gui, int object, const string fileMask);
import int  ListBoxGetNumItems (int gui, int object);
import int  ListBoxSaveGameList (int gui, int object);
import void ListBoxRemove (int gui, int object, int listIndex);

#define LEAVE_ROOM 1
#define ENTER_ROOM 2
#define EGO_DIES   3
#define GOT_SCORE  4
#define GUI_MDOWN  5
#define GUI_MUP    6
#define ADD_INVENTORY  7
#define LOSE_INVENTORY 8
#define RESTORE_GAME   9

import void SetFrameSound (int view, int loop, int frame, int sound);
#endif

enum EventType {
  eEventLeaveRoom = 1,
  eEventEnterRoomBeforeFadein = 2,
  eEventGotScore = 4,
  eEventGUIMouseDown = 5,
  eEventGUIMouseUp = 6,
  eEventAddInventory = 7,
  eEventLoseInventory = 8,
  eEventRestoreGame = 9
};

// forward-declare these so that they can be returned by GUIControl class
managed struct GUI;
managed struct Label;
managed struct Button;
managed struct Slider;
managed struct TextBox;
managed struct InvWindow;
managed struct ListBox;
managed struct Character;

managed struct GUIControl {
  /// Place le contrôle de GUI au-dessus de tous les autres.
  import void BringToFront();
  /// Retourne le contrôle de GUI situé aux coordonnées spécifiées (X,Y) de l'écran.
  import static GUIControl* GetAtScreenXY(int x, int y);    // $AUTOCOMPLETESTATICONLY$  $AUTOCOMPLETENOINHERIT$
  /// Place le contrôle de GUI à l'arrière-plan.
  import void SendToBack();
  /// Déplace le coin supérieur gauche du contrôle aux coordonnées spécifiées (X,Y).
  import void SetPosition(int x, int y);
  /// Redimensionne le contrôle de GUI spécifié aux dimensions LARGEUR x HAUTEUR.
  import void SetSize(int largeur, int hauteur);
  /// Convertit un pointeur GUIControl* générique en une variable du type Button, et la retourne.
  readonly import attribute Button*  AsButton;   // $AUTOCOMPLETENOINHERIT$
  /// Convertit un pointeur GUIControl* générique en une variable du type InvWindow, et la retourne.
  readonly import attribute InvWindow* AsInvWindow;  // $AUTOCOMPLETENOINHERIT$
  /// Convertit un pointeur GUIControl* générique en une variable du type Label, et la retourne.
  readonly import attribute Label*   AsLabel;    // $AUTOCOMPLETENOINHERIT$
  /// Convertit un pointeur GUIControl* générique en une variable du type List, et la retourne.
  readonly import attribute ListBox* AsListBox;  // $AUTOCOMPLETENOINHERIT$
  /// Convertit un pointeur GUIControl* générique en une variable du type Slider, et la retourne.
  readonly import attribute Slider*  AsSlider;   // $AUTOCOMPLETENOINHERIT$
  /// Convertit un pointeur GUIControl* générique en une variable du type TextBox, et la retourne.
  readonly import attribute TextBox* AsTextBox;  // $AUTOCOMPLETENOINHERIT$
  /// Retourne/Définit si l'on peut cliquer sur le contrôle du GUI.
  import attribute bool Clickable;
  /// Retourne/Définit si le contrôle de GUI est activé.
  import attribute bool Enabled;
  /// Retourne/Définit la hauteur du contrôle de GUI.
  import attribute int  Height;
  /// Retourne le numéro d'identification (ID) du contrôle de GUI.
  readonly import attribute int  ID;
  /// Retourne le GUI (interface) qui contient le contrôle.
  readonly import attribute GUI* OwningGUI;
  /// Retourne/Définit si le contrôle de GUI est visible.
  import attribute bool Visible;
  /// Retourne/Définit la largeur du contrôle de GUI.
  import attribute int  Width;
  /// Retourne/Définit la position X du contrôle de GUI.
  import attribute int  X;
  /// Retourne/Définit la position Y du contrôle de GUI.
  import attribute int  Y;
};

managed struct Label extends GUIControl {
#ifndef STRICT_STRINGS
  import void GetText(string buffer);
  import void SetText(const string text);
#endif
  /// Retourne/Détermine la police utilisée pour afficher le texte de l'étiquette.
  import attribute FontType Font;
  /// Retourne/Définit le texte affiché dans l'étiquette.
  import attribute String Text;
  /// Retourne/Définit la couleur du texte utilisée pour afficher le texte de l'étiquette.
  import attribute int  TextColor;
};

managed struct Button extends GUIControl {
  /// Anime le bouton en jouant la séquence de la vue spécifiée.
  import void Animate(int view, int loop, int delay, RepeatStyle);
#ifndef STRICT_STRINGS
  import void GetText(string buffer);
  import void SetText(const string text);
#endif
  ///  Retourne/Définit si l'image du bouton est rogneé à son cadre.
  import attribute bool ClipImage;
  /// Retourne/Définit la police utilisée pour le texte du bouton.
  import attribute FontType Font;
  /// Retourne le numéro de l'image actuelle du bouton.
  readonly import attribute int  Graphic;
  /// Retourne/Définit l'image du bouton lors de son survol par la souris.
  import attribute int  MouseOverGraphic;
  /// Retourne/Définit l'image normale du bouton.
  import attribute int  NormalGraphic;
  /// Retourne/Définit l'image du bouton lorsqu'il est pressé.
  import attribute int  PushedGraphic;
  /// Retourne/Définit la couleur utilisée pour afficher le texte du bouton.
  import attribute int  TextColor;
  /// Retourne/Définit le texte affiché sur le bouton.
  import attribute String Text;
};

managed struct Slider extends GUIControl {
  /// Retourne/Définit l'image utilisée pour l'arrière-plan de la barre.
  import attribute int  BackgroundGraphic;
  /// Retourne/Définit l'image utilisée pour dessiner le curseur sur la barre.
  import attribute int  HandleGraphic;
  /// Retourne/Définit le décalage à utiliser (en pixels) pour l'image du curseur.
  import attribute int  HandleOffset;
  /// Retourne/Définit la valeur maximum de la barre de défilement.
  import attribute int  Max;
  /// Retourne/Définit la valeur minimum de la barre de défilement.
  import attribute int  Min;
  /// Retourne/Définit la valeur de la barre de défilement.
  import attribute int  Value;
};

managed struct TextBox extends GUIControl {
#ifndef STRICT_STRINGS
  import void GetText(string buffer);
  import void SetText(const string text);
#endif
  /// Retourne/Définit la police utilisée par la zone de saisie.
  import attribute FontType Font;
  /// Retourne/Définit le contenu de la zone de saisie.
  import attribute String Text;
  /// Retourne/Définit la couleur utilisée pour dessiner la zone de saisie.
  import attribute int TextColor;
};

managed struct InvWindow extends GUIControl {
  /// Fait défiler la fenêtre d'inventaire d'une ligne vers le bas.
  import void ScrollDown();
  /// Fait défiler la fenêtre d'inventaire d'une ligne vers le haut.
  import void ScrollUp();
  /// Retourne/Définit le personnage dont la fenêtre affiche actuellement l'inventaire.
  import attribute Character* CharacterToUse;
  /// Retourne l'objet d'inventaire qui est actuellement affiché à la position spécifiée dans la fenêtre d'inventaire.
  readonly import attribute InventoryItem* ItemAtIndex[];
  /// Retourne le nombre total d'objets contenus dans la fenêtre d'inventaire.
  readonly import attribute int ItemCount;
  /// Retourne la taille d'une ligne de la fenêtre d'inventaire.
  import attribute int ItemHeight;
  /// Retourne la taille d'une ligne de la fenêtre d'inventaire.
  import attribute int ItemWidth;
  /// Retourne l'indice du premier objet actuellement visible dans la fenêtre d'inventaire.
  import attribute int TopItem;
  /// Retourne le nombre d'objets qui peuvent être affichés dans chaque ligne de la fenêtre d'inventaire.
  readonly import attribute int ItemsPerRow;
  /// Retourne le nombre de lignes qui peuvent être affichées dans la fenêtre d'inventaire.
  readonly import attribute int RowCount;
};

managed struct ListBox extends GUIControl {
	/// Ajoute une nouvelle ligne à la liste spécifiée. La ligne sera ajoutée à la fin de la liste.
	import bool AddItem(const string text);
	/// Supprime toutes les lignes de la liste.
	import void Clear();
	/// Remplit la liste avec les noms de fichiers correspondant à FILEMASK dans le répertoire courant.
	import void FillDirList(const string fileMask);
	/// Remplit la liste avec les parties précédement sauvegardées.
	import int  FillSaveGameList();
	/// Détermine quelle ligne dans la liste est aux coordonnées (X,Y) spécifiées.
	import int  GetItemAtLocation(int x, int y);
#ifndef STRICT_STRINGS
	import void GetItemText(int listIndex, string buffer);
	import void SetItemText(int listIndex, const string newText);
#endif
	/// Insère une nouvelle ligne dans la liste, juste avant l'index spécifié.
	import bool InsertItemAt(int listIndex, const string text);
	/// Supprime la ligne spécifiée de la liste.
	import void RemoveItem(int listIndex);
	/// Fait défiler la liste d'un cran vers le bas.
	import void ScrollDown();
	/// Fait défiler la liste d'un cran vers le haut.
	import void ScrollUp();
	/// Retourne/Définit la police utilisée par la liste spécifiée.
	import attribute FontType Font;
	/// Retourne/Définit si les bordures de la liste sont cachées.
	import attribute bool HideBorder;
	/// Retourne/Définit si les flèches de défilement sont cachées.
	import attribute bool HideScrollArrows;
	/// Retourne le nombre de lignes dans la liste spécifiée. 
	readonly import attribute int ItemCount;
	/// Retourne/Définit le texte de la ligne spécifiée de la liste.
	import attribute String Items[];
	/// Retourne le nombre de lignes qui peuvent être affichées dans la liste.
	readonly import attribute int RowCount;
	///  Retourne le bloc de sauvegarde correspondant pour chaque ligne dans la liste.
	readonly import attribute int SaveGameSlots[];
	/// Retourne/Définit le numéro de la ligne actuellement sélectionnée dans la liste.
	import attribute int  SelectedIndex;
	/// Retourne/Définit la ligne au plus haut dans la liste. 
	import attribute int  TopItem;
};

managed struct GUI {
  /// Centre le GUI (interface) au milieu de l'écran.
  import void Centre();
  /// Retourne le GUI (interface) se situant au premier plan aux coordonnées (x,y) spécifiées.
  import static GUI* GetAtScreenXY(int x, int y);    // $AUTOCOMPLETESTATICONLY$
  /// Place le coin supérieur gauche du GUI (interface) aux nouvelles coordonnées (x,y) à l'écran.
  import void SetPosition(int x, int y);
  /// Change la taille du GUI (interface) spécifié pour la largeur et la hauteur spécifiées.
  import void SetSize(int largeur, int hauteur);
  /// Retourne/Définit l'image de fond du GUI (interface).
  import attribute int  BackgroundGraphic;
  /// Retourne/Définit si les clics sur le GUI (interface) peuvent avoir un effet.
  import attribute bool Clickable;
  /// Accéde aux contrôles du GUI (interface) par leur numéro d'index (ID).
  readonly import attribute GUIControl *Controls[];
  /// Retourne le nombre de contrôles que contient le GUI (interface).
  readonly import attribute int  ControlCount;
  /// Retourne/Définit la hauteur du GUI (interface).
  import attribute int  Height;
  /// Retourne le numéro ID du GUI (interface).
  readonly import attribute int  ID;
  /// Retourne/Définit la transparence du GUI (interface), en pourcentage.
  import attribute int  Transparency;
  /// Retourne/Définit si le GUI (interface) est visible.
  import attribute bool Visible;
  /// Retourne/Définit la largeur du GUI (interface).
  import attribute int  Width;
  /// Retourne/Définit la position X du coin supérieure gauche du GUI (interface).
  import attribute int  X;
  /// Retourne/Définit la position Y du coin supérieure gauche du GUI (interface).
  import attribute int  Y;
  /// Retourne/Définit le ZOrder (plan relatif) du GUI (interface).
  import attribute int  ZOrder;
  int   reserved[2];   // $AUTOCOMPLETEIGNORE$
};

managed struct Hotspot {
  /// Retourne la zone interactive (hotspot) se situant aux coordonnées (X,Y) spécifiées de la piéce actuelle.
  import static Hotspot* GetAtScreenXY(int x, int y);    // $AUTOCOMPLETESTATICONLY$
#ifndef STRICT_STRINGS
  import void GetName(string tampon);
  import void GetPropertyText(const string propriete, string tampon);
#endif
  /// Retourne la valeur de la propriété personnalisée spécifiée de la zone interactive (hotspot).
  import int  GetProperty(const string propriete);
  /// Retourne le texte défini par la propriété personnalisée spécifiée de la zone interactive (hotspot).
  import String GetTextProperty(const string propriete);
  /// Lance l'interaction associée à la zone interactive (hotspot) pour le mode de curseur (CursorMode) spécifié.
  import void RunInteraction(CursorMode);
  /// Retourne/Définit si la zone interactive (hotspot) est activée.
  import attribute bool Enabled;
  /// Retourne le numéro ID de la zone interactive (hotspot).
  readonly import attribute int ID;
  /// Retourne le nom de la zone interactive (hotspot).
  readonly import attribute String Name;
  /// Retourne la coordonnée de pièce X du point d'accès (walk-to point) à la zone interactive (hotspot).
  readonly import attribute int WalkToX;
  /// Retourne la coordonnée de pièce Y du point d'accès (walk-to point) à la zone interactive (hotspot).
  readonly import attribute int WalkToY;
  int reserved[2];   // $AUTOCOMPLETEIGNORE$
};

managed struct Region {
  /// Retourne la région se situant aux coordonnées (X,Y) spécifiées dans la piéce actuelle.
  import static Region* GetAtRoomXY(int x, int y);    // $AUTOCOMPLETESTATICONLY$
  ///  Lance l'interaction associée à la région pour le mode de curseur (CursorMode) spécifié.
  import void RunInteraction(int curseur);
  /// Attribue la teinte RVB spécifiée qui sera apliquée aux personnage passant sur cette région.
  import void Tint(int rouge, int vert, int bleu, int taux);
  /// Retourne/Définit si la région est activée.
  import attribute bool Enabled;
  /// Retourne le numéro ID de cette région.
  readonly import attribute int ID;
  /// Retourne/Définit le niveau de luminosité de la région.
  import attribute int  LightLevel;
  /// Retourne si la région est actuellement affectée par une teinte.
  readonly import attribute bool TintEnabled;
  /// Retourne le niveau de Bleu de la teinte actuelle de la région.
  readonly import attribute int  TintBlue;
  /// Retourne le niveau de Vert de la teinte actuelle de la région.
  readonly import attribute int  TintGreen;
  /// Retourne le niveau de Rouge de la teinte actuelle de la région.
  readonly import attribute int  TintRed;
  /// Retourne la saturation de la teinte actuelle de la région.
  readonly import attribute int  TintSaturation;
  int reserved[2];   // $AUTOCOMPLETEIGNORE$
};

managed struct Dialog {
  /// Présente les options de ce dialogue à l'utilisateur et retourne le numéro de l'option sélectionnée par le joueur.
  import int DisplayOptions(DialogOptionSayStyle = eSayUseOptionSetting);
  /// Retourne si une option d'une conversation est disponible pour le joueur.
  import DialogOptionState GetOptionState(int option);
  /// Retourne le texte de l'option de dialogue spécifiée.
  import String GetOptionText(int option);
  /// Retourne si le joueur a déjà choisi l'option spécifiée dans ce dialogue.
  import bool HasOptionBeenChosen(int option);
  /// Active/Désactive une option dans une conversation.
  import void SetOptionState(int option, DialogOptionState);
  /// Lance le dialogue spécifié.
  import void Start();
  /// Retourne le numéro ID du dialogue tel qu'affiché dans l'éditeur.
  readonly import attribute int ID;
  /// Retourne le nombre d'options que contient ce dialogue.
  readonly import attribute int OptionCount;
  /// Retourne si le dialogue propose une zone de saisie permettant au joueur d'entrer du texte.
  readonly import attribute bool ShowTextParser;
  
  int reserved[2];   // $AUTOCOMPLETEIGNORE$
};

#define IsSpeechVoxAvailable IsVoxAvailable
//import int IsSpeechVoxAvailable();  // make autocomplete recognise

managed struct Maths {
  /// Calcule l'ArcCosinus, en radians, de la valeur spécifiée.
  import static float ArcCos(float valeur);
  /// Calcule l'ArcSinus, en radians, de la valeur spécifiée.
  import static float ArcSin(float valeur);
  /// Calcule l'ArcTangente, en radians, de la valeur spécifiée.
  import static float ArcTan(float valeur);
  /// Calcule l'ArcTangente de Y / X.
  import static float ArcTan2(float y, float x);
  /// Calcule le cosinus de l'angle spécifié (en radians).
  import static float Cos(float radians);
  /// Calcule le cosinus hyperbolique de l'angle spécifié (en radians).
  import static float Cosh(float radians);
  /// Convertit l'angle entré en degrés en angle en radians équivalent.
  import static float DegreesToRadians(float degres);
  /// Calcul l'exponentiel de la valeur spécifiée.
  import static float Exp(float x);
  /// Calcule le logarithme népérien (en base e) de la valeur spécifiée.
  import static float Log(float x);
  /// Calcul le lograrithme en base dix de la valeur spécifiée.
  import static float Log10(float x);
  /// Convertit l'angle entré en radians en angle en degrés équivalent.
  import static float RadiansToDegrees(float radians);
  /// Calcule la valeur de base élevée à la puissance exposant.
  import static float RaiseToPower(float base, float exposant);
  /// Calcule le sinus de l'angle spécifié (en radians).
  import static float Sin(float radians);
  /// Calcule le sinus hyperbolique de l'angle spécifié (en radians).
  import static float Sinh(float radians);
  /// Calcule la racine carrée de la valeur entrée.
  import static float Sqrt(float valeur);
  /// Calcule la tangente de l'angle spécifié (en radians).
  import static float Tan(float radians);
  /// Calcule la tangente hyperbolique de l'angle spécifié (en radians).
  import static float Tanh(float radians);
  /// Retourne la valeur de Pi.
  readonly import static attribute float Pi;
};

managed struct DateTime {
  /// Retourne l'heure et la date actuelles du système.
  readonly import static attribute DateTime* Now;   // $AUTOCOMPLETESTATICONLY$
  /// Retourne l'année représentée dans l'objet DateTime.
  readonly import attribute int Year;
  /// Retourne le mois (1-12) représenté par l'objet DateTime.
  readonly import attribute int Month;
  /// Retourne le jour du mois (1-31) représenté dans l'objet DateTime.
  readonly import attribute int DayOfMonth;
  /// Retourne l'heure (0-23) représentée dans l'objet DateTime.
  readonly import attribute int Hour;
  /// Retourne les minutes (0-59) représentées dans l'objet DateTime.
  readonly import attribute int Minute;
  /// Retourne les secondes (0-59) représentées dans l'objet DateTime.
  readonly import attribute int Second;
  /// Retourne le temps écoulé depuis le 1er janvier 1970 (temps système).
  readonly import attribute int RawTime;
};

managed struct DialogOptionsRenderingInfo {
  /// Retourne/Définit l'option actuellement active dans l'écran d'options du dialogue.
  import attribute int ActiveOptionID;
  /// Retourne le dialogue qui doit être affiché.
  readonly import attribute Dialog* DialogToRender;
  /// Retourne/Définit la hauteur de la zone affichant les options de dialogue.
  import attribute int Height;
  /// Retourne/Définit la largeur de la zone de saisie (textbox) de l'analyseur de texte (parser).
  import attribute int ParserTextBoxWidth;
  /// Retourne/Définit la position X de la gauche de la zone de saisie (textbox) de l'analyseur de texte (parser).
  import attribute int ParserTextBoxX;
  /// Retourne/Définit la position Y du haut de la zone de saisie (textbox) de l'analyseur de texte (parser).
  import attribute int ParserTextBoxY;
  /// Retourne la surface de dessin (drawing surface) qui est utilisée pour dessiner la fenêtre affichant les options du dialogue.
  readonly import attribute DrawingSurface* Surface;
  /// Retourne/Définit la largeur de la surface de la fenêtre affichant les options du dialogue.
  import attribute int Width;
  /// Retourne/Définit la coordonnée horizontale du coin supérieur gauche de la zone d'options du dialogue.
  import attribute int X;
  /// Retourne/Définit la coordonnée verticale du coin supérieur gauche de la zone d'options du dialogue.
  import attribute int Y;
};

managed struct AudioChannel {
  /// Va à POSITION dans la séquence actuellement jouée sur ce canal.
  import void Seek(int position);
  /// Définit la séquence en cours de lecture comme un son spatialisé, provenant de (x,y). 
  import void SetRoomLocation(int x, int y);
  /// Stoppe le son en cours de lecture sur le canal audio. 
  import void Stop();
  /// Retourne le numéro ID de ce canal audio.
  readonly import attribute int ID;
  /// Retourne si le canal audio joue actuellement un son.
  readonly import attribute bool IsPlaying;
  /// Retourne la durée en milliseconde de la séquence jouée sur le canal. 
  readonly import attribute int LengthMs;
  /// Retourne/Définit l'équilibrage stéréo du canal, de -100 à 100.
  import attribute int Panning;
  /// Retourne la séquence audio jouée sur le canal.
  readonly import attribute AudioClip* PlayingClip;
  /// Retourne la position actuelle de la séquence jouée sur le canal. Ce que signifie la position dépend du type de fichier.
  readonly import attribute int Position;
  /// Retourne la position actuelle de la séquence jouée sur le canal, en millisecondes.
  readonly import attribute int PositionMs;
  /// Retourne/Définit le volume de ce canal audio, de 0 à 100.
  import attribute int Volume;
};

managed struct AudioClip {
  /// Joue la séquence audio.
  import AudioChannel* Play(AudioPriority=SCR_NO_VALUE, RepeatStyle=SCR_NO_VALUE);
  /// Joue la séquence audio en démarrant depuis la position spécifiée.
  import AudioChannel* PlayFrom(int position, AudioPriority=SCR_NO_VALUE, RepeatStyle=SCR_NO_VALUE);
  /// Joue la séquence audio, ou la met à la file si aucun canal n'est libre.
  import AudioChannel* PlayQueued(AudioPriority=SCR_NO_VALUE, RepeatStyle=SCR_NO_VALUE);
  /// Arrête toutes les diffusions en cours de cette séquence audio.
  import void Stop();
  /// Retourne le type de fichier de la séquence audio.
  readonly import attribute AudioFileType FileType;
  /// Vérifie si la séquence audio est disponible sur l'ordinateur du joueur. 
  readonly import attribute bool IsAvailable;
  /// Retourne le type de la séquence audio, tel que défini dans l'éditeur.
  readonly import attribute AudioType Type;
};

struct System {
  readonly int  screen_width,screen_height;
  readonly int  color_depth;
  readonly int  os;
  readonly int  windowed;
  int  vsync;
  readonly int  viewport_width, viewport_height;
#ifndef STRICT_STRINGS
  readonly char version[10];
#endif
  /// Retourne si le verouillage majuscules (Caps Lock) est actif.
  readonly import static attribute bool CapsLock;
  /// Retourne un pointeur vers le canal audio spécifé.
  readonly import static attribute AudioChannel *AudioChannels[];   // $AUTOCOMPLETESTATICONLY$
  /// Retourne le nombre de canaux audio supportés part AGS.
  readonly import static attribute int  AudioChannelCount;   // $AUTOCOMPLETESTATICONLY$
  /// Retourne la profondeur de couleur à laquelle le jeu est exécuté.
  readonly import static attribute int  ColorDepth;
  /// Retourne/Définit le niveau Gamma du jeu.
  import static attribute int  Gamma;
  /// Retourne si le jeu est en mode accélération matérielle.
  readonly import static attribute bool HardwareAcceleration;
  /// Retourne si le verrouillage numérique (Num Lock) est activé.
  readonly import static attribute bool NumLock;
  /// Retourne le système d'exploitation sous lequel tourne le jeu actuellement.
  readonly import static attribute eOperatingSystem OperatingSystem;
  /// Retourne la hauteur de l'écran selon la résolution actuelle.
  readonly import static attribute int  ScreenHeight;
  /// Retourne la largeur de l'écran selon la résolution actuelle.
  readonly import static attribute int  ScreenWidth;
  /// Retourne si Arrêt Défilement (Scroll Lock) est actuellement activé sur le système du joueur.
  readonly import static attribute bool ScrollLock;
  /// Retourne si le PC du joueur supporte la configuration du gamma.
  readonly import static attribute bool SupportsGammaControl;
  /// Retourne le numéro de version du moteur d'AGS.
  readonly import static attribute String Version;
  /// Retourne la hauteur actuelle de la fenêtre, selon le systéme de coordonnées du jeu
  readonly import static attribute int  ViewportHeight;
  /// Retourne la largeur actuelle de la fenêtre, selon le systéme de coordonnées du jeu
  readonly import static attribute int  ViewportWidth;
  /// Retourne/Définit le volume sonore, de 0 à 100.
  import static attribute int  Volume;
  /// Retourne/Définit si AGS effectue une synchronisation verticale avant d'afficher chaque image.
  import static attribute bool VSync;
  /// Retourne si le jeu tourne actuellement en mode fenêtré.
  readonly import static attribute bool Windowed;
};

enum BlockingStyle {
  eBlock = 919,
  eNoBlock = 920
};
enum Direction {
  eForwards = 1062,
  eBackwards = 1063
};
enum WalkWhere {
  eAnywhere = 304,
  eWalkableAreas = 305
};

managed struct Object {
  /// Anime l'objet en utilisant sa vue actuelle.
  import function Animate(int sequence, int delai, Repetition=eOnce, Blocage=eBlock, Direction=eForwards);
  /// Vérifie et retourne s'il y a un objet aux coordonnées (X,Y) de l'écran.
  import static Object* GetAtScreenXY(int x, int y);    // $AUTOCOMPLETESTATICONLY$
#ifndef STRICT_STRINGS
	import void     GetName(string tampon);
  import function GetPropertyText(const string propriete, string tampon);
#endif
  /// Retourne la valeur de la propriété personnalisée spécifiée de l'objet.
  import function GetProperty(const string propriete);
  /// Retourne le texte défini par la propriété personnalisée spécifiée de l'objet.
  import String   GetTextProperty(const string propriete);
  /// Vérifie si l'objet touche l'objet spécifié.
  import bool IsCollidingWithObject(Object* objet);
  /// Passe l'objet en tant qu'élément d'arrière-plan pour la pièce.
  import function MergeIntoBackground();
  /// Commence à déplacer l'objet depuis sa position actuelle vers les coordonnées spécifiées.
  import function Move(int x, int y, int vitesse, Blocage=eNoBlock, ZonesEmpruntables=eWalkableAreas);
  /// Annule les effets de la commande Tint, et réutilise la teinte ambiante de la pièce sur l'objet.
  import function RemoveTint();
  /// Lance l'interaction associée à l'objet pour le mode de curseur (CursorMode) spécifié.
  import function RunInteraction(CursorMode);
  /// Déplace l'objet pour que son coin inférieur gauche se trouve aux les coordonnées spécifiées.
  import function SetPosition(int x, int y);
  /// Définit la vue de l'objet (et éventuellement la séquence et la vignette) pour pouvoir l'animer.
  import function SetView(int vue, int sequence=-1, int vignette=-1);
  /// Stoppe l'animation éventuelle de l'objet.
  import function StopAnimating();
  /// Stoppe le déplacement éventuel de l'objet.
  import function StopMoving();
  /// Teinte l'objet de la couleur, à la saturation et avec la luminosité spécifiées.
  import function Tint(int rouge, int vert, int bleu, int saturation, int luminosite);
  /// Retourne si l'objet spécifié est actuellement animé.
  readonly import attribute bool Animating;
  /// Retourne/Définit la ligne de base de l'objet. 0 pour utiliser la coordonnée Y de l'objet.
  import attribute int  Baseline;
  /// Retourne/Définit la hauteur de la zone blocage de l'objet.
  import attribute int  BlockingHeight;
  /// Retourne/Définit la largeur de la zone de blocage de l'objet.
  import attribute int  BlockingWidth;
  /// Retourne/Définit si l'objet est considéré comme un élément cliquable.
  import attribute bool Clickable;
  /// Retourne le numéro de la vignette (Frame) actuellement affichée.
  readonly import attribute int  Frame;
  /// Retourne/Définit le numéro de l'image (sprite) que l'objet utilise actuellement.
  import attribute int  Graphic;
  /// Retourne le numéro ID de l'objet.
  readonly import attribute int ID;
  /// Retourne/Définit si l'objet est concerné par la mise à l'échelle des zones de déplacement. 
  import attribute bool IgnoreScaling;
  /// Définit si l'objet ignore les zones de plan intermédiaire (WalkBehind Areas).
  import attribute bool IgnoreWalkbehinds;
  /// Retourne la séquence d'animation correspondant actuellement à l'objet.
  readonly import attribute int  Loop;
  /// Retourne si l'objet se déplace actuellement.
  readonly import attribute bool Moving;
  /// Retourne le nom de l'objet (description).
  readonly import attribute String Name;
  /// Retourne/Définit si l'objet peut être traversé ou non par les personnages et autres objets mobiles.
  import attribute bool Solid;
  /// Retourne/Définit le niveau de transparence de l'objet.
  import attribute int  Transparency;
  /// Retourne la vue (animation) actuellement définie pour l'objet.
  readonly import attribute int View;
  /// Retourne/Définit si l'objet est actuellement visible.
  import attribute bool Visible;
  /// Retourne/Définit la coordonnée X de l'objet, qui correspond à la gauche de l'image de l'objet.
  import attribute int  X;
  /// Retourne/Définit la coordonnée Y de l'objet, qui correspond au bas de l'image de l'objet.
  import attribute int  Y;

  int reserved[2];  // $AUTOCOMPLETEIGNORE$
};

managed struct Character {
  /// Ajoute l'objet d'inventaire spécifié à l'inventaire du personnage.
  import function AddInventory(InventoryItem *objet_inventaire, int addAtIndex=SCR_NO_VALUE);
  /// Ajoute manuellement un point de passage au déplacement du personnage.
  import function AddWaypoint(int x, int y);
  /// Anime le personnage en utilisant la vue bloquée (LockView) actuelle.
  import function Animate(int sequence, int delai, Repetition=eOnce, Blocage=eBlock, Direction=eForwards);
  /// Change la pièce dans laquelle le personnage se trouve. S'il s'agit du personnage joueur, alors le jeu ira dans la nouvelle pièce.
  import function ChangeRoom(int piece, int x=SCR_NO_VALUE, int y=SCR_NO_VALUE);
  /// Change la pièce dans laquelle le personnage se trouve, et le positionne le long d'un des bords de la pièce.
  import function ChangeRoomAutoPosition(int piece, int position=0);
  /// Change le numéro de la vue normale du personnage.
  import function ChangeView(int vue);
  /// Tourne le personnage en direction du personnage spécifié.
  import function FaceCharacter(Character* perso, Blocage=eBlock);
  /// Tourne le personnage en direction de la coordonnée spécifiée.
  import function FaceLocation(int x, int y, Blocage=eBlock);
  /// Tourne le personnage en direction de l'objet spécifié.
  import function FaceObject(Object* objet, Blocage=eBlock);
  /// Dit au personnage de suivre le personnage spécifié.
  import function FollowCharacter(Character* perso, int dist=10, int ardeur=97);
  /// Vérifie et retourne s'il y a un personnage aux coordonnées (X,Y) de l'écran.
  import static Character* GetAtScreenXY(int x, int y);    // $AUTOCOMPLETESTATICONLY$
  /// Retourne la valeur définie pour la propriété personnalisée du personnage spécifié.
  import function GetProperty(const string propriete);
#ifndef STRICT_STRINGS
  import void     GetPropertyText(const string propriete, string tampon);
#endif
  /// Retourne le texte défini par la propriété personnalisée spécifiée du personnage. 
  import String   GetTextProperty(const string propriete);
  /// Vérifie si le personnage possède actuellement l'objet d'inventaire spécifié.
  import bool     HasInventory(InventoryItem *objet_inventaire);
  /// Vérifie si le personnage touche le personnage spécifié.
  import function IsCollidingWithChar(Character* perso);
  /// Vérifie si le personnage touche l'objet spécifié.
  import function IsCollidingWithObject(Object* objet);
  /// Définit la vue du personnage, pour lancer une animation.
  import function LockView(int vue);
  /// Définit et bloque la vue (animation) du personnage, et l'aligne avec l'image pré-existante selon Alignment.
  import function LockViewAligned(int vue, int sequence, Alignment);
  /// Définit et bloque la vignette (frame) de la vue du personnage.
  import function LockViewFrame(int vue, int sequence, int vignette);
  /// Définit la vue du personnage, comme le fait LockView, avec un décalage (X,Y).
  import function LockViewOffset(int vue, int xDecalage, int yDecalage);
  /// Supprime l'objet d'inventaire spécifié de l'inventaire du personnage. 
  import function LoseInventory(InventoryItem *objet_inventaire);
  /// Déplace le personnage depuis sa position actuelle vers (X,Y) sans jouer l'animation de déplacement du personnage.
  import function Move(int x, int y, Blocage=eNoBlock, ZonesEmpruntables=eWalkableAreas);
  /// Place le personnage sur la zone de déplacement la plus proche.
  import function PlaceOnWalkableArea();
  /// Annule les effets de la commande Tint sur le personnage.
  import void     RemoveTint();
  /// Déclenche l'interaction avec le personnage spécifiée pour le mode de curseur (CoursorMode).
  import function RunInteraction(CursorMode);
  /// Affiche le texte spécifié en utilisant la mise en forme des discours du personnage.
  import function Say(const string message, ...);
  /// Affiche le texte spécifié à la position spécifiée en utilisant la mise en forme des discours de ce personnage.
  import function SayAt(int x, int y, int largeur, const string message);
  /// Affiche le texte de façon simmilaire à la fonction Say mais sans bloquer le jeux.
  import Overlay* SayBackground(const string message);
  /// Fait de ce personnage le personnage joueur.
  import function SetAsPlayer();
  /// Change la vue d'attente du personnage.
  import function SetIdleView(int vue, int delai);
  /// Change la vitesse de déplacement du personnage.
  import function SetWalkSpeed(int x, int y);
  /// Arrête les déplacements du personnage.
  import function StopMoving();
  /// Affiche le texte spécifié comme une pensée au-dessus de la tête du personnage.
  import function Think(const string message, ...);
  /// Teinte le personnage de la couleur et de la saturation spécifiée.
  import void     Tint(int rouge, int vert, int bleu, int saturation, int luminosite);
  /// Débloque la vue (animation) après avoir terminé une animation lancée suite à une commande LockView.
  import function UnlockView();
  /// Déplace le personnage jusqu'aux coordonnées (X,Y) tout en utilisant son animation de déplacement.
  import function Walk(int x, int y, Blocage=eNoBlock, ZonesEmpruntables=eWalkableAreas);
  /// Déplace le personnage en ligne droite autant que possible vers les coordonnées. Utile pour les déplacements au clavier.
  import function WalkStraight(int x, int y, Blocage=eNoBlock);
  /// Retourne/Définit l'objet d'inventaire séléctionné par le personnage. Vaut null si aucun objet d'inventaire n'est séléctionné.
  import attribute InventoryItem* ActiveInventory;
  /// Retourne si le personnage est actuellement en animation.
  readonly import attribute bool Animating;
  /// Retourne/Définit la vitesse d'animation du personnage.
  import attribute int  AnimationSpeed;
  /// Retourne/Définit la ligne de base (baseline) du personnage. 0 signifie que la position Y du personnage sera utilisée.
  import attribute int  Baseline;
  /// Retourne/Définit le temps entre deux cligotements, exprimé en nombre de cycles de jeu.
  import attribute int  BlinkInterval;
  /// Retourne/Définit la vue de clignement du personnage. -1 pour la désactiver.
  import attribute int  BlinkView;
  /// Retourne/Définit si le personnage peut cligner des yeux pendant qu'il pense ou parle.
  import attribute bool BlinkWhileThinking;
  /// Permet de spécifier manuellemnt la hauteur de la zone de blocage des pieds du personnage.
  import attribute int  BlockingHeight;
  /// Permet de spécifier manuellemnt la largeur de la zone de blocage des pieds du personnage.
  import attribute int  BlockingWidth;
  /// Retourne/Définit si on peut cliquer sur le personnage (ou bien si les clics le traversent).
  import attribute bool Clickable;
  /// Retourne/Définit si le personnage à une vue de déplacement à 8 séquences (dont les séquences diagonales).
  import attribute bool DiagonalLoops;
  /// Retourne/Définit le numéro de vignette (frame) actuelle dans la vue actuelle du personnage.
  import attribute int  Frame;
  /// Retourne si le personnage à une teinte définie explicitement.
  readonly import attribute bool HasExplicitTint;
  /// Retourne le numéro ID du personnage.
  readonly import attribute int ID;
  /// Retourne la vue d'attente du personnage (-1 s'il n'en a pas).
  readonly import attribute int IdleView;
  /// Retourne/Définit si le personnage ignore la teinte et l'éclairage de la région.
  import attribute bool IgnoreLighting;
  import attribute bool IgnoreScaling;       // obsolete. $AUTOCOMPLETEIGNORE$
  /// Retourne/Définit si le personnage ignore les plans intermédiaires (walk-behind areas) et donc se place toujours au premier plan.
  import attribute bool IgnoreWalkbehinds; 
  /// Retourne le nombre de chaque objet d'inventaire que le personnage possède.
  import attribute int  InventoryQuantity[];
  /// Retourne/Définit le numéro de séquence actuelle du personnage dans la vue actuelle.
  import attribute int  Loop;
  /// Retourne/Définit si la mise à l'échelle du personnage est spécifiée manuellement et non définie par celle de la zone de déplacement.
  import attribute bool ManualScaling;
  /// Retourne/Définit si le personnage ne se déplace que lorsque ses vignettes d'animation (frames) changent.
  import attribute bool MovementLinkedToAnimation;
  /// Retourne si le personnage est en train de se déplacer.
  readonly import attribute bool Moving;
  /// Retourne/Définit le nom du personnage.
  import attribute String Name;
  /// Retourne le numéro de la vue normale (de marche) du personnage.
  readonly import attribute int NormalView;
  /// Retourne le numéro de la pièce dans laquelle le personnage était juste avant.
  readonly import attribute int PreviousRoom;
  /// Reourne le numéro de la pièce dans laquelle le personnage est actuellement.
  readonly import attribute int Room;
  /// Retourne/Définit si la vitesse de déplacement du personnage est associée à sa mise à l'échelle.
  import attribute bool ScaleMoveSpeed;
  /// Retourne/Définit si le volume des sons associés aux vignettes d'animation (frames) du personnage est ajusté à la mise à l'échelle de ce dernier.
  import attribute bool ScaleVolume;
  /// Retourne/Définit le niveau actuel de mise à l'echelle du personnage.
  import attribute int  Scaling;
  /// Retourne/Définit si le personnage bloque les objets ou autres personnages en les empéchant de le traverser.
  import attribute bool Solid;
  /// Retourne si le personnage est en train d'exécuter une commande Say (Dire).
  readonly import attribute bool Speaking;
  /// Retourne la vignette (frame) actuelle de l'animation de discours du personnage (seulement si Speaking vaut true).
  readonly import attribute int SpeakingFrame;
  /// Retourne/Définit le delai d'animation de la vue de discours du personnage.
  import attribute int  SpeechAnimationDelay;
  /// Retourne/Définit la couleur des discours du personnage.
  import attribute int  SpeechColor;
  /// Retourne/Définit la vue de discours du personnage.
  import attribute int  SpeechView;
  /// Retourne/Définit la vue pensive du personnage.
  import attribute int  ThinkView;
  /// Retourne/Définit la transparence du personnage.
  import attribute int  Transparency;
  /// Retourne/Définit si le personnage se tourne avant de commencer à marcher.
  import attribute bool TurnBeforeWalking;
  /// Retourne le numéro de vue actuelle du personnage.
  readonly import attribute int View;
  /// Retourne la vitesse X du personnage.
  readonly import attribute int WalkSpeedX;
  /// Retourne la vitesse Y du personnage.
  readonly import attribute int WalkSpeedY;
#ifdef STRICT
  /// Coordonnée X actuelle du personnage.
  import attribute int  x;
  /// Coordonnée Y actuelle du personnage.
  import attribute int  y;
  /// Coordonnée Z actuelle du personnage.
  import attribute int  z;
  readonly int reserved_a[28];   // $AUTOCOMPLETEIGNORE$
  readonly short reserved_f[MAX_INV];  // $AUTOCOMPLETEIGNORE$
  readonly int   reserved_e;   // $AUTOCOMPLETEIGNORE$
  char  reserved_g[40];   // $AUTOCOMPLETEIGNORE$
  readonly char  scrname[20];
  char  on;  // $AUTOCOMPLETEIGNORE$
#endif
#ifndef STRICT
  int   defview;    // $AUTOCOMPLETEIGNORE$
  int   talkview;  // $AUTOCOMPLETEIGNORE$
  int   view;      // $AUTOCOMPLETEIGNORE$
  int   room,prevroom;
  int   x,y;
  int   wait;     // $AUTOCOMPLETEIGNORE$
  readonly int flags;
  int   reserveda;  // $AUTOCOMPLETEIGNORE$
  int   idleview;  // $AUTOCOMPLETEIGNORE$
  int   reservedm[2]; // $AUTOCOMPLETEIGNORE$
  int   activeinv;
  int   talkcolor;  // $AUTOCOMPLETEIGNORE$
  int   thinkview;  // $AUTOCOMPLETEIGNORE$
  int   reservedex[3];  // $AUTOCOMPLETEIGNORE$
  int   z;
  int   reservedexb[5]; // $AUTOCOMPLETEIGNORE$
  short loop,frame;
  readonly short walking,animating;
  readonly short walkspeed;   // $AUTOCOMPLETEIGNORE$
  short animspeed;
  short inv[MAX_INV];
  short actx,acty;  // $AUTOCOMPLETEIGNORE$
  char  name[40];
  readonly char  scrname[20];
  char  on;
#endif
  };

struct GameState {
  int  score;
  int  used_mode;
  int  disabled_user_interface;
  int  gscript_timer;
  int  debug_mode;
  int  globalvars[50];
  int  messagetime;   // for auto-remove messages
  int  usedinv;
#ifdef STRICT
  int  reserved__[4];   // $AUTOCOMPLETEIGNORE$
#endif
#ifndef STRICT
  int  top_inv_item;
  int  num_inv_displayed;
  int  num_inv_items;
  int  items_per_line;
#endif
  int  text_speed;
  int  sierra_inv_color;
  int  talkanim_speed;  // $AUTOCOMPLETEIGNORE$
  int  inv_item_wid;
  int  inv_item_hit;
  int  text_shadow_color;
  int  swap_portrait;
  int  speech_text_gui;
  int  following_room_timer;
  int  total_score;
  int  skip_display;
  int  no_multiloop_repeat;
  int  roomscript_finished;
  int  inv_activated;
  int  no_textbg_when_voice;
  int  max_dialogoption_width;
  int  no_hicolor_fadein;
  int  bgspeech_game_speed;
  int  bgspeech_stay_on_display;
  int  unfactor_speech_from_textlength;
  int  mp3_loop_before_end;
  int  speech_music_drop;
  readonly int  in_cutscene;
  readonly int  skipping_cutscene;
  readonly int  room_width;
  readonly int  room_height;
  int  game_speed_modifier;  // $AUTOCOMPLETEIGNORE$
  int  score_sound;
  int  previous_game_data;
  int  replay_hotkey;
  int  dialog_options_x;
  int  dialog_options_y;
  int  narrator_speech;
  int  ambient_sounds_persist;
  int  lipsync_speed;
  int  close_mouth_end_speech_time;
  int  disable_antialiasing;
  int  text_speed_modifier;
  int  text_align;
  int  speech_bubble_width;
  int  min_dialogoption_width;
  int  disable_dialog_parser;
  int  anim_background_speed;
  int  top_bar_backcolor;
  int  top_bar_textcolor;
  int  top_bar_bordercolor;
  int  top_bar_borderwidth;
  int  top_bar_ypos;
  int  screenshot_width;
  int  screenshot_height;
  int  top_bar_font;
  int  speech_text_align;
  int  auto_use_walkto_points;
  int  inventory_greys_out;
  int  skip_speech_specific_key;
  int  abort_key;
  readonly int fade_color_red;
  readonly int fade_color_green;
  readonly int fade_color_blue;
  int  show_single_dialog_option;
  int  keep_screen_during_instant_transition;
  int  read_dialog_option_color;
  int  stop_dialog_at_end;   // $AUTOCOMPLETEIGNORE$
  };

import readonly Character *player;
import Object object[40];
import Mouse mouse;
import System system;
import GameState  game;
import int   gs_globals[50];
import short savegameindex[20];
import ColorType palette[256];

#undef CursorMode
#undef FontType
#undef AudioType
