//=============================================================================
//
// Adventure Game Studio (AGS)
//
// Copyright (C) 1999-2011 Chris Jones and 2011-20xx others
// The full list of copyright holders can be found in the Copyright.txt
// file, which is part of this source code distribution.
//
// The AGS source code is provided under the Artistic License 2.0.
// A copy of this license can be found in the file License.txt and at
// http://www.opensource.org/licenses/artistic-license-2.0.php
//
//=============================================================================

#include "ac/gamesetupstructbase.h"
#include "util/stream.h"

using AGS::Common::Stream;

GameSetupStructBase::GameSetupStructBase()
    : dict(NULL)
    , globalscript(NULL)
    , chars(NULL)
    , compiled_script(NULL)
    , load_messages(NULL)
    , load_dictionary(false)
    , load_compiled_script(false)
{
    memset(messages, 0, sizeof(messages));
}

GameSetupStructBase::~GameSetupStructBase()
{
    delete [] load_messages;
}

void GameSetupStructBase::ReadFromFile(Stream *in)
{
    in->Read(&gamename[0], 50);
    in->ReadArrayOfInt32(options, 100);
    in->Read(&paluses[0], 256);
    // colors are an array of chars
    in->Read(&defpal[0], sizeof(color)*256);
    numviews = in->ReadInt32();
    numcharacters = in->ReadInt32();
    playercharacter = in->ReadInt32();
    totalscore = in->ReadInt32();
    numinvitems = in->ReadInt16();
    numdialog = in->ReadInt32();
    numdlgmessage = in->ReadInt32();
    numfonts = in->ReadInt32();
    color_depth = in->ReadInt32();
    target_win = in->ReadInt32();
    dialog_bullet = in->ReadInt32();
    hotdot = in->ReadInt16();
    hotdotouter = in->ReadInt16();
    uniqueid = in->ReadInt32();
    numgui = in->ReadInt32();
    numcursors = in->ReadInt32();
    default_resolution = in->ReadInt32();
    default_lipsync_frame = in->ReadInt32();
    invhotdotsprite = in->ReadInt32();
    in->ReadArrayOfInt32(reserved, 17);
    load_messages = new int32_t[MAXGLOBALMES];
    in->ReadArrayOfInt32(load_messages, MAXGLOBALMES);

    // - GameSetupStruct::read_words_dictionary() checks load_dictionary
    // - load_game_file() checks load_compiled_script
    load_dictionary = in->ReadInt32() != 0;
    in->ReadInt32(); // globalscript
    in->ReadInt32(); // chars
    load_compiled_script = in->ReadInt32() != 0;
}

void GameSetupStructBase::WriteToFile(Stream *out)
{
    out->Write(&gamename[0], 50);
    out->WriteArrayOfInt32(options, 100);
    out->Write(&paluses[0], 256);
    // colors are an array of chars
    out->Write(&defpal[0], sizeof(color)*256);
    out->WriteInt32(numviews);
    out->WriteInt32(numcharacters);
    out->WriteInt32(playercharacter);
    out->WriteInt32(totalscore);
    out->WriteInt16(numinvitems);
    out->WriteInt32(numdialog);
    out->WriteInt32(numdlgmessage);
    out->WriteInt32(numfonts);
    out->WriteInt32(color_depth);
    out->WriteInt32(target_win);
    out->WriteInt32(dialog_bullet);
    out->WriteInt16(hotdot);
    out->WriteInt16(hotdotouter);
    out->WriteInt32(uniqueid);
    out->WriteInt32(numgui);
    out->WriteInt32(numcursors);
    out->WriteInt32(default_resolution);
    out->WriteInt32(default_lipsync_frame);
    out->WriteInt32(invhotdotsprite);
    out->WriteArrayOfInt32(reserved, 17);
    for (int i = 0; i < MAXGLOBALMES; ++i)
    {
        out->WriteInt32(messages[i] ? 1 : 0);
    }
    out->WriteInt32(dict ? 1 : 0);
    out->WriteInt32(0); // globalscript
    out->WriteInt32(0); // chars
    out->WriteInt32(compiled_script ? 1 : 0);
}
