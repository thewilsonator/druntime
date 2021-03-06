/**
 * Windows API header module
 *
 * Translated from MinGW Windows headers
 *
 * Authors: Stewart Gordon
 * License: $(LINK2 http://www.boost.org/LICENSE_1_0.txt, Boost License 1.0)
 * Source: $(DRUNTIMESRC src/core/sys/windows/_mapi.d)
 */
module core.sys.windows.mapi;
version (Windows):

private import core.sys.windows.windef;

// FIXME: check types and grouping of constants

enum {
    SUCCESS_SUCCESS,
    MAPI_USER_ABORT,
    MAPI_E_USER_ABORT        = MAPI_USER_ABORT,
    MAPI_E_FAILURE,
    MAPI_E_LOGIN_FAILURE,
    MAPI_E_LOGON_FAILURE     = MAPI_E_LOGIN_FAILURE,
    MAPI_E_DISK_FULL         = 4,
    MAPI_E_INSUFFICIENT_MEMORY,
    MAPI_E_ACCESS_DENIED,
    MAPI_E_BLK_TOO_SMALL     = MAPI_E_ACCESS_DENIED, // = 6
    MAPI_E_TOO_MANY_SESSIONS = 8,
    MAPI_E_TOO_MANY_FILES,
    MAPI_E_TOO_MANY_RECIPIENTS,
    MAPI_E_ATTACHMENT_NOT_FOUND,
    MAPI_E_ATTACHMENT_OPEN_FAILURE,
    MAPI_E_ATTACHMENT_WRITE_FAILURE,
    MAPI_E_UNKNOWN_RECIPIENT,
    MAPI_E_BAD_RECIPTYPE,
    MAPI_E_NO_MESSAGES,
    MAPI_E_INVALID_MESSAGE,
    MAPI_E_TEXT_TOO_LARGE,
    MAPI_E_INVALID_SESSION,
    MAPI_E_TYPE_NOT_SUPPORTED,
    MAPI_E_AMBIGUOUS_RECIPIENT,
    MAPI_E_AMBIGUOUS_RECIP   = MAPI_E_AMBIGUOUS_RECIPIENT,
    MAPI_E_MESSAGE_IN_USE,
    MAPI_E_NETWORK_FAILURE,
    MAPI_E_INVALID_EDITFIELDS,
    MAPI_E_INVALID_RECIPS,
    MAPI_E_NOT_SUPPORTED  // = 26
}

enum {
    MAPI_ORIG,
    MAPI_TO,
    MAPI_CC,
    MAPI_BCC
}

enum MAPI_LOGON_UI          = 0x0001;
enum MAPI_NEW_SESSION       = 0x0002;
enum MAPI_FORCE_DOWNLOAD    = 0x1000;
enum MAPI_LOGOFF_SHARED     = 0x0001;
enum MAPI_LOGOFF_UI         = 0x0002;
enum MAPI_DIALOG            = 0x0008;
enum MAPI_UNREAD_ONLY       = 0x0020;
enum MAPI_LONG_MSGID        = 0x4000;
enum MAPI_GUARANTEE_FIFO    = 0x0100;
enum MAPI_ENVELOPE_ONLY     = 0x0040;
enum MAPI_PEEK              = 0x0080;
enum MAPI_BODY_AS_FILE      = 0x0200;
enum MAPI_SUPPRESS_ATTACH   = 0x0800;
enum MAPI_AB_NOMODIFY       = 0x0400;
enum MAPI_OLE               = 0x0001;
enum MAPI_OLE_STATIC        = 0x0002;
enum MAPI_UNREAD            = 0x0001;
enum MAPI_RECEIPT_REQUESTED = 0x0002;
enum MAPI_SENT              = 0x0004;

alias uint FLAGS, LHANDLE;
alias uint* LPLHANDLE, LPULONG;

struct MapiRecipDesc {
    ULONG  ulReserved;
    ULONG  ulRecipClass;
    LPSTR  lpszName;
    LPSTR  lpszAddress;
    ULONG  ulEIDSize;
    LPVOID lpEntryID;
}
alias MapiRecipDesc* lpMapiRecipDesc;

struct MapiFileDesc {
    ULONG  ulReserved;
    ULONG  flFlags;
    ULONG  nPosition;
    LPSTR  lpszPathName;
    LPSTR  lpszFileName;
    LPVOID lpFileType;
}
alias MapiFileDesc* lpMapiFileDesc;

struct MapiFileTagExt {
    ULONG  ulReserved;
    ULONG  cbTag;
    LPBYTE lpTag;
    ULONG  cbEncoding;
    LPBYTE lpEncoding;
}
alias MapiFileTagExt* lpMapiFileTagExt;

struct MapiMessage {
    ULONG           ulReserved;
    LPSTR           lpszSubject;
    LPSTR           lpszNoteText;
    LPSTR           lpszMessageType;
    LPSTR           lpszDateReceived;
    LPSTR           lpszConversationID;
    FLAGS           flFlags;
    lpMapiRecipDesc lpOriginator;
    ULONG           nRecipCount;
    lpMapiRecipDesc lpRecips;
    ULONG           nFileCount;
    lpMapiFileDesc  lpFiles;
}
alias MapiMessage* lpMapiMessage;

extern (Pascal) {
    ULONG MAPILogon(ULONG, LPSTR, LPSTR, FLAGS, ULONG, LPLHANDLE);
    ULONG MAPISendMail(LHANDLE, ULONG, lpMapiMessage, FLAGS, ULONG);
    ULONG MAPISendDocuments(ULONG, LPSTR, LPSTR, LPSTR, ULONG);
    ULONG MAPIReadMail(LHANDLE, ULONG, LPSTR, FLAGS, ULONG, lpMapiMessage*);
    ULONG MAPIFindNext(LHANDLE, ULONG, LPSTR, LPSTR, FLAGS, ULONG, LPSTR);
    ULONG MAPIResolveName(LHANDLE, ULONG, LPSTR, FLAGS, ULONG,
      lpMapiRecipDesc*);
    ULONG MAPIAddress(LHANDLE, ULONG, LPSTR, ULONG, LPSTR, ULONG,
      lpMapiRecipDesc, FLAGS, ULONG, LPULONG, lpMapiRecipDesc*);
    ULONG MAPIFreeBuffer(LPVOID);
    ULONG MAPIDetails(LHANDLE, ULONG, lpMapiRecipDesc, FLAGS, ULONG);
    ULONG MAPISaveMail(LHANDLE, ULONG, lpMapiMessage lpszMessage, FLAGS,
      ULONG, LPSTR);
    ULONG MAPIDeleteMail(LHANDLE lpSession, ULONG, LPSTR, FLAGS, ULONG);
    ULONG MAPILogoff(LHANDLE, ULONG, FLAGS, ULONG);
    // Netscape extensions
    ULONG MAPIGetNetscapeVersion();
    ULONG MAPI_NSCP_SynchronizeClient(LHANDLE, ULONG);

    // Handles for use with GetProcAddress
    alias ULONG function(ULONG, LPSTR, LPSTR, FLAGS, ULONG, LPLHANDLE)
      LPMAPILOGON;
    alias ULONG function(LHANDLE, ULONG, lpMapiMessage, FLAGS, ULONG)
      LPMAPISENDMAIL;
    alias ULONG function(ULONG, LPSTR, LPSTR, LPSTR, ULONG)
      LPMAPISENDDOCUMENTS;
    alias ULONG function(LHANDLE, ULONG, LPSTR, FLAGS, ULONG, lpMapiMessage*)
      LPMAPIREADMAIL;
    alias ULONG function(LHANDLE, ULONG, LPSTR, LPSTR, FLAGS, ULONG, LPSTR)
      LPMAPIFINDNEXT;
    alias ULONG function(LHANDLE, ULONG, LPSTR, FLAGS, ULONG,
      lpMapiRecipDesc*) LPMAPIRESOLVENAME;
    alias ULONG function(LHANDLE, ULONG, LPSTR, ULONG, LPSTR, ULONG,
      lpMapiRecipDesc, FLAGS, ULONG, LPULONG, lpMapiRecipDesc*) LPMAPIADDRESS;
    alias ULONG function(LPVOID lpv) LPMAPIFREEBUFFER;
    alias ULONG function(LHANDLE, ULONG, lpMapiRecipDesc, FLAGS, ULONG)
      LPMAPIDETAILS;
    alias ULONG function(LHANDLE, ULONG, lpMapiMessage, FLAGS, ULONG, LPSTR)
      LPMAPISAVEMAIL;
    alias ULONG function(LHANDLE lpSession, ULONG, LPSTR, FLAGS, ULONG)
      LPMAPIDELETEMAIL;
    alias ULONG function(LHANDLE, ULONG, FLAGS, ULONG) LPMAPILOGOFF;
}
