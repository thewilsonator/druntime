/**
 * Windows API header module
 *
 * Translated from MinGW Windows headers
 *
 * License: $(LINK2 http://www.boost.org/LICENSE_1_0.txt, Boost License 1.0)
 * Source: $(DRUNTIMESRC src/core/sys/windows/_regstr.d)
 */
module core.sys.windows.regstr;
version (Windows):

// TODO: fix possible conflict with shloj. Sort out NEC_98 issue.

private import core.sys.windows.windef;
private import core.sys.windows.winnt : TEXT;

enum REGSTR_MAX_VALUE_LENGTH = 256;

enum {
    IT_COMPACT = 0,
    IT_TYPICAL,
    IT_PORTABLE,
    IT_CUSTOM // = 3
}

enum DOSOPTGF_DEFCLEAN = 1;

enum DOSOPTF_DEFAULT     = 0x01;
enum DOSOPTF_SUPPORTED   = 0x02;
enum DOSOPTF_ALWAYSUSE   = 0x04;
enum DOSOPTF_USESPMODE   = 0x08;
enum DOSOPTF_PROVIDESUMB = 0x10;
enum DOSOPTF_NEEDSETUP   = 0x20;
enum DOSOPTF_INDOSSTART  = 0x40;
enum DOSOPTF_MULTIPLE    = 0x80;

enum SUF_FIRSTTIME  = 0x0001;
enum SUF_EXPRESS    = 0x0002;
enum SUF_BATCHINF   = 0x0004;
enum SUF_CLEAN      = 0x0008;
enum SUF_INSETUP    = 0x0010;
enum SUF_NETSETUP   = 0x0020;
enum SUF_NETHDBOOT  = 0x0040;
enum SUF_NETRPLBOOT = 0x0080;
enum SUF_SBSCOPYOK  = 0x0100;

enum VPDF_DISABLEPWRMGMT       = 1;
enum VPDF_FORCEAPM10MODE       = 2;
enum VPDF_SKIPINTELSLCHECK     = 4;
enum VPDF_DISABLEPWRSTATUSPOLL = 8;

enum PCMCIA_OPT_HAVE_SOCKET  = 0x01;
enum PCMCIA_OPT_AUTOMEM      = 0x04;
enum PCMCIA_OPT_NO_SOUND     = 0x08;
enum PCMCIA_OPT_NO_AUDIO     = 0x10;
enum PCMCIA_OPT_NO_APMREMOVE = 0x20;

enum PCMCIA_DEF_MEMBEGIN   = 0x0C0000;
enum PCMCIA_DEF_MEMEND     = 0xFFFFFF;
enum PCMCIA_DEF_MEMLEN     = 0x001000;
enum PCMCIA_DEF_MIN_REGION = 0x010000;

enum {
    PCI_OPTIONS_USE_BIOS         = 1,
    PCI_OPTIONS_USE_IRQ_STEERING = 2
}

enum PCI_FLAG_NO_VIDEO_IRQ      = 0x0001;
enum PCI_FLAG_PCMCIA_WANT_IRQ   = 0x0002;
enum PCI_FLAG_DUAL_IDE          = 0x0004;
enum PCI_FLAG_NO_ENUM_AT_ALL    = 0x0008;
enum PCI_FLAG_ENUM_NO_RESOURCE  = 0x0010;
enum PCI_FLAG_NEED_DWORD_ACCESS = 0x0020;
enum PCI_FLAG_SINGLE_FUNCTION   = 0x0040;
enum PCI_FLAG_ALWAYS_ENABLED    = 0x0080;
enum PCI_FLAG_IS_IDE            = 0x0100;
enum PCI_FLAG_IS_VIDEO          = 0x0200;
enum PCI_FLAG_FAIL_START        = 0x0400;

enum size_t REGSTR_VAL_MAX_HCID_LEN = 1024;

enum REGDF_NOTDETIO        = 0x00000001;
enum REGDF_NOTDETMEM       = 0x00000002;
enum REGDF_NOTDETIRQ       = 0x00000004;
enum REGDF_NOTDETDMA       = 0x00000008;
enum REGDF_NOTDETALL       = REGDF_NOTDETIO | REGDF_NOTDETMEM | REGDF_NOTDETIRQ | REGDF_NOTDETDMA;
enum REGDF_NEEDFULLCONFIG  = 0x00000010;
enum REGDF_GENFORCEDCONFIG = 0x00000020;
enum REGDF_NODETCONFIG     = 0x00008000;
enum REGDF_CONFLICTIO      = 0x00010000;
enum REGDF_CONFLICTMEM     = 0x00020000;
enum REGDF_CONFLICTIRQ     = 0x00040000;
enum REGDF_CONFLICTDMA     = 0x00080000;
enum REGDF_CONFLICTALL     = REGDF_CONFLICTIO | REGDF_CONFLICTMEM | REGDF_CONFLICTIRQ | REGDF_CONFLICTDMA;
enum REGDF_MAPIRQ2TO9      = 0x00100000;
enum REGDF_NOTVERIFIED     = 0x80000000;

enum CONFIGFLAG_DISABLED       = 0x0001;
enum CONFIGFLAG_REMOVED        = 0x0002;
enum CONFIGFLAG_MANUAL_INSTALL = 0x0004;
enum CONFIGFLAG_IGNORE_BOOT_LC = 0x0008;
enum CONFIGFLAG_NET_BOOT       = 0x0010;
enum CONFIGFLAG_REINSTALL      = 0x0020;
enum CONFIGFLAG_FAILEDINSTALL  = 0x0040;
enum CONFIGFLAG_CANTSTOPACHILD = 0x0080;
enum CONFIGFLAG_OKREMOVEROM    = 0x0100;
enum CONFIGFLAG_NOREMOVEEXIT   = 0x0200;

enum CSCONFIGFLAG_DISABLED      = 1;
enum CSCONFIGFLAG_DO_NOT_CREATE = 2;
enum CSCONFIGFLAG_DO_NOT_START  = 4;
enum CSCONFIGFLAG_BITS          = 7;

enum DMSTATEFLAG_APPLYTOALL = 1;

enum NUM_RESOURCE_MAP = 256;

enum MF_FLAGS_EVEN_IF_NO_RESOURCE         = 1;
enum MF_FLAGS_NO_CREATE_IF_NO_RESOURCE    = 2;
enum MF_FLAGS_FILL_IN_UNKNOWN_RESOURCE    = 4;
enum MF_FLAGS_CREATE_BUT_NO_SHOW_DISABLED = 8;

enum EISAFLAG_NO_IO_MERGE   = 1;
enum EISAFLAG_SLOT_IO_FIRST = 2;

enum EISA_NO_MAX_FUNCTION   = 0xFF;

enum NUM_EISA_RANGES = 4;

enum APMMENUSUSPEND_DISABLED = 0;
enum APMMENUSUSPEND_ENABLED  = 1;
enum APMMENUSUSPEND_UNDOCKED = 2;
enum APMMENUSUSPEND_NOCHANGE = 128;

//#ifndef NEC_98
const TCHAR[]
    REGSTR_KEY_ISAENUM             = TEXT!"ISAPnP",
    REGSTR_KEY_EISAENUM            = TEXT!"EISA",
    REGSTR_VAL_EISA_RANGES         = TEXT!"EISARanges",
    REGSTR_VAL_EISA_FUNCTIONS      = TEXT!"EISAFunctions",
    REGSTR_VAL_EISA_FUNCTIONS_MASK = TEXT!"EISAFunctionsMask",
    REGSTR_VAL_EISA_FLAGS          = TEXT!"EISAFlags",
    REGSTR_VAL_EISA_SIMULATE_INT15 = TEXT!"EISASimulateInt15";
// #else
// #define REGSTR_KEY_ISAENUM   TEXT("C98PnP")
// #define REGSTR_KEY_EISAENUM  TEXT("NESA")
// #define  REGSTR_VAL_EISA_RANGES  TEXT("NESARanges")
// #define  REGSTR_VAL_EISA_FUNCTIONS   TEXT("NESAFunctions")
// #define  REGSTR_VAL_EISA_FUNCTIONS_MASK  TEXT("NESAFunctionsMask")
// #define  REGSTR_VAL_EISA_FLAGS   TEXT("NESAFlags")
// #define  REGSTR_VAL_EISA_SIMULATE_INT15  TEXT("NESASimulateInt15")
// #endif

const TCHAR[]
    REGSTR_KEY_CLASS                     = TEXT!`Class`,
    REGSTR_KEY_CONFIG                    = TEXT!`Config`,
    REGSTR_KEY_ENUM                      = TEXT!`Enum`,
    REGSTR_KEY_ROOTENUM                  = TEXT!`Root`,
    REGSTR_KEY_BIOSENUM                  = TEXT!`BIOS`,
    REGSTR_KEY_PCMCIAENUM                = TEXT!`PCMCIA`,
    REGSTR_KEY_PCIENUM                   = TEXT!`PCI`,
    REGSTR_KEY_LOGCONFIG                 = TEXT!`LogConfig`,
    REGSTR_KEY_SYSTEMBOARD               = TEXT!`*PNP0C01`,
    REGSTR_KEY_APM                       = TEXT!`*PNP0C05`,
    REGSTR_KEY_INIUPDATE                 = TEXT!`IniUpdate`,
    REG_KEY_INSTDEV                      = TEXT!`Installed`,
    REGSTR_KEY_DOSOPTCDROM               = TEXT!`CD-ROM`,
    REGSTR_KEY_DOSOPTMOUSE               = TEXT!`MOUSE`,
    REGSTR_DEFAULT_INSTANCE              = TEXT!`0000`,
    REGSTR_PATH_MOTHERBOARD              = REGSTR_KEY_SYSTEMBOARD ~ TEXT!`\` ~ REGSTR_DEFAULT_INSTANCE,
    REGSTR_PATH_SETUP                    = TEXT!`Software\Microsoft\Windows\CurrentVersion`,
    REGSTR_PATH_PIFCONVERT               = TEXT!`Software\Microsoft\Windows\CurrentVersion\PIFConvert`,
    REGSTR_PATH_MSDOSOPTS                = TEXT!`Software\Microsoft\Windows\CurrentVersion\MS-DOSOptions`,
    REGSTR_PATH_MSDOSEMU                 = TEXT!`Software\Microsoft\Windows\CurrentVersion\MS-DOS Emulation`,
    REGSTR_PATH_NEWDOSBOX                = TEXT!`Software\Microsoft\Windows\CurrentVersion\MS-DOS Emulation\AppCompat`,
    REGSTR_PATH_RUNONCE                  = TEXT!`Software\Microsoft\Windows\CurrentVersion\RunOnce`,
    REGSTR_PATH_RUN                      = TEXT!`Software\Microsoft\Windows\CurrentVersion\Run`,
    REGSTR_PATH_RUNSERVICESONCE          = TEXT!`Software\Microsoft\Windows\CurrentVersion\RunServicesOnce`,
    REGSTR_PATH_RUNSERVICES              = TEXT!`Software\Microsoft\Windows\CurrentVersion\RunServices`,

//#ifndef REGSTR_PATH_EXPLORER /* also in shlobj.h */
    REGSTR_PATH_EXPLORER                 = TEXT!`Software\Microsoft\Windows\CurrentVersion\Explorer`,
//#endif

    REGSTR_PATH_DETECT                   = TEXT!`Software\Microsoft\Windows\CurrentVersion\Detect`,
    REGSTR_PATH_APPPATHS                 = TEXT!`Software\Microsoft\Windows\CurrentVersion\App Paths`,
    REGSTR_PATH_UNINSTALL                = TEXT!`Software\Microsoft\Windows\CurrentVersion\Uninstall`,
    REGSTR_PATH_REALMODENET              = TEXT!`Software\Microsoft\Windows\CurrentVersion\Network\Real Mode Net`,
    REGSTR_PATH_NETEQUIV                 = TEXT!`Software\Microsoft\Windows\CurrentVersion\Network\Equivalent`,
    REGSTR_PATH_CVNETWORK                = TEXT!`Software\Microsoft\Windows\CurrentVersion\Network`,
    REGSTR_PATH_IDCONFIGDB               = TEXT!`System\CurrentControlSet\Control\IDConfigDB`,
    REGSTR_PATH_CLASS                    = TEXT!`System\CurrentControlSet\Services\Class`,
    REGSTR_PATH_DISPLAYSETTINGS          = TEXT!`Display\Settings`,
    REGSTR_PATH_FONTS                    = TEXT!`Display\Fonts`,
    REGSTR_PATH_ENUM                     = TEXT!`Enum`,
    REGSTR_PATH_ROOT                     = TEXT!`Enum\Root`,
    REGSTR_PATH_SERVICES                 = TEXT!`System\CurrentControlSet\Services`,
    REGSTR_PATH_VXD                      = TEXT!`System\CurrentControlSet\Services\VxD`,
    REGSTR_PATH_IOS                      = TEXT!`System\CurrentControlSet\Services\VxD\IOS`,
    REGSTR_PATH_VMM                      = TEXT!`System\CurrentControlSet\Services\VxD\VMM`,
    REGSTR_PATH_VPOWERD                  = TEXT!`System\CurrentControlSet\Services\VxD\VPOWERD`,
    REGSTR_PATH_VNETSUP                  = TEXT!`System\CurrentControlSet\Services\VxD\VNETSUP`,
    REGSTR_PATH_NWREDIR                  = TEXT!`System\CurrentControlSet\Services\VxD\NWREDIR`,
    REGSTR_PATH_NCPSERVER                = TEXT!`System\CurrentControlSet\Services\NcpServer\Parameters`,
    REGSTR_PATH_IOARB                    = TEXT!`System\CurrentControlSet\Services\Arbitrators\IOArb`,
    REGSTR_PATH_ADDRARB                  = TEXT!`System\CurrentControlSet\Services\Arbitrators\AddrArb`,
    REGSTR_PATH_DMAARB                   = TEXT!`System\CurrentControlSet\Services\Arbitrators\DMAArb`,
    REGSTR_PATH_IRQARB                   = TEXT!`System\CurrentControlSet\Services\Arbitrators\IRQArb`,
    REGSTR_PATH_CODEPAGE                 = TEXT!`System\CurrentControlSet\Control\Nls\Codepage`,
    REGSTR_PATH_FILESYSTEM               = TEXT!`System\CurrentControlSet\Control\FileSystem`,
    REGSTR_PATH_FILESYSTEM_NOVOLTRACK    = TEXT!`System\CurrentControlSet\Control\FileSystem\NoVolTrack`,
    REGSTR_PATH_CDFS                     = TEXT!`System\CurrentControlSet\Control\FileSystem\CDFS`,
    REGSTR_PATH_WINBOOT                  = TEXT!`System\CurrentControlSet\Control\WinBoot`,
    REGSTR_PATH_INSTALLEDFILES           = TEXT!`System\CurrentControlSet\Control\InstalledFiles`,
    REGSTR_PATH_VMM32FILES               = TEXT!`System\CurrentControlSet\Control\VMM32Files`,

    REGSTR_VAL_BITSPERPIXEL              = TEXT!`BitsPerPixel`,
    REGSTR_VAL_RESOLUTION                = TEXT!`Resolution`,
    REGSTR_VAL_DPILOGICALX               = TEXT!`DPILogicalX`,
    REGSTR_VAL_DPILOGICALY               = TEXT!`DPILogicalY`,
    REGSTR_VAL_DPIPHYSICALX              = TEXT!`DPIPhysicalX`,
    REGSTR_VAL_DPIPHYSICALY              = TEXT!`DPIPhysicalY`,
    REGSTR_VAL_REFRESHRATE               = TEXT!`RefreshRate`,
    REGSTR_VAL_DISPLAYFLAGS              = TEXT!`DisplayFlags`,
    REGSTR_PATH_CONTROLPANEL             = TEXT!`Control Panel`,
    REGSTR_PATH_CONTROLSFOLDER           = TEXT!`Software\Microsoft\Windows\CurrentVersion\Controls Folder`,
    REGSTR_VAL_DOSCP                     = TEXT!`OEMCP`,
    REGSTR_VAL_WINCP                     = TEXT!`ACP`,
    REGSTR_PATH_DYNA_ENUM                = TEXT!`Config Manager\Enum`,
    REGSTR_VAL_HARDWARE_KEY              = TEXT!`HardWareKey`,
    REGSTR_VAL_ALLOCATION                = TEXT!`Allocation`,
    REGSTR_VAL_PROBLEM                   = TEXT!`Problem`,
    REGSTR_VAL_STATUS                    = TEXT!`Status`,
    REGSTR_VAL_DONTUSEMEM                = TEXT!`DontAllocLastMem`,
    REGSTR_VAL_SYSTEMROOT                = TEXT!`SystemRoot`,
    REGSTR_VAL_BOOTCOUNT                 = TEXT!`BootCount`,
    REGSTR_VAL_REALNETSTART              = TEXT!`RealNetStart`,
    REGSTR_VAL_MEDIA                     = TEXT!`MediaPath`,
    REGSTR_VAL_CONFIG                    = TEXT!`ConfigPath`,
    REGSTR_VAL_DEVICEPATH                = TEXT!`DevicePath`,
    REGSTR_VAL_SRCPATH                   = TEXT!`SourcePath`,
    REGSTR_VAL_OLDWINDIR                 = TEXT!`OldWinDir`,
    REGSTR_VAL_SETUPFLAGS                = TEXT!`SetupFlags`,
    REGSTR_VAL_REGOWNER                  = TEXT!`RegisteredOwner`,
    REGSTR_VAL_REGORGANIZATION           = TEXT!`RegisteredOrganization`,
    REGSTR_VAL_LICENSINGINFO             = TEXT!`LicensingInfo`,
    REGSTR_VAL_OLDMSDOSVER               = TEXT!`OldMSDOSVer`,
    REGSTR_VAL_FIRSTINSTALLDATETIME      = TEXT!`FirstInstallDateTime`,
    REGSTR_VAL_INSTALLTYPE               = TEXT!`InstallType`,
    REGSTR_VAL_WRAPPER                   = TEXT!`Wrapper`,

    REGSTR_KEY_SETUP                     = TEXT!`\Setup`,
    REGSTR_VAL_BOOTDIR                   = TEXT!`BootDir`,
    REGSTR_VAL_WINBOOTDIR                = TEXT!`WinbootDir`,
    REGSTR_VAL_WINDIR                    = TEXT!`WinDir`,
    REGSTR_VAL_APPINSTPATH               = TEXT!`AppInstallPath`,
    REGSTR_PATH_EBD                      = REGSTR_PATH_SETUP ~ REGSTR_KEY_SETUP ~ TEXT!`\EBD`,
    REGSTR_KEY_EBDFILESLOCAL             = TEXT!`EBDFilesLocale`,
    REGSTR_KEY_EBDFILESKEYBOARD          = TEXT!`EBDFilesKeyboard`,
    REGSTR_KEY_EBDAUTOEXECBATLOCAL       = TEXT!`EBDAutoexecBatLocale`,
    REGSTR_KEY_EBDAUTOEXECBATKEYBOARD    = TEXT!`EBDAutoexecBatKeyboard`,
    REGSTR_KEY_EBDCONFIGSYSLOCAL         = TEXT!`EBDConfigSysLocale`,
    REGSTR_KEY_EBDCONFIGSYSKEYBOARD      = TEXT!`EBDConfigSysKeyboard`,
    REGSTR_VAL_MSDOSMODE                 = TEXT!`MSDOSMode`,
    REGSTR_VAL_MSDOSMODEDISCARD          = TEXT!`Discard`,
    REGSTR_VAL_DOSOPTGLOBALFLAGS         = TEXT!`GlobalFlags`,
    REGSTR_VAL_DOSOPTFLAGS               = TEXT!`Flags`,
    REGSTR_VAL_OPTORDER                  = TEXT!`Order`,
    REGSTR_VAL_CONFIGSYS                 = TEXT!`Config.Sys`,
    REGSTR_VAL_AUTOEXEC                  = TEXT!`Autoexec.Bat`,
    REGSTR_VAL_STDDOSOPTION              = TEXT!`StdOption`,
    REGSTR_VAL_DOSOPTTIP                 = TEXT!`TipText`,

    REGSTR_VAL_DOSPAGER                  = TEXT!`DOSPager`,
    REGSTR_VAL_VXDGROUPS                 = TEXT!`VXDGroups`,
    REGSTR_VAL_VPOWERDFLAGS              = TEXT!`Flags`,

    REGSTR_VAL_WORKGROUP                 = TEXT!`Workgroup`,
    REGSTR_VAL_DIRECTHOST                = TEXT!`DirectHost`,
    REGSTR_VAL_FILESHARING               = TEXT!`FileSharing`,
    REGSTR_VAL_PRINTSHARING              = TEXT!`PrintSharing`,
    REGSTR_VAL_FIRSTNETDRIVE             = TEXT!`FirstNetworkDrive`,
    REGSTR_VAL_MAXCONNECTIONS            = TEXT!`MaxConnections`,
    REGSTR_VAL_APISUPPORT                = TEXT!`APISupport`,
    REGSTR_VAL_MAXRETRY                  = TEXT!`MaxRetry`,
    REGSTR_VAL_MINRETRY                  = TEXT!`MinRetry`,
    REGSTR_VAL_SUPPORTLFN                = TEXT!`SupportLFN`,
    REGSTR_VAL_SUPPORTBURST              = TEXT!`SupportBurst`,
    REGSTR_VAL_SUPPORTTUNNELLING         = TEXT!`SupportTunnelling`,
    REGSTR_VAL_FULLTRACE                 = TEXT!`FullTrace`,
    REGSTR_VAL_READCACHING               = TEXT!`ReadCaching`,
    REGSTR_VAL_SHOWDOTS                  = TEXT!`ShowDots`,
    REGSTR_VAL_GAPTIME                   = TEXT!`GapTime`,
    REGSTR_VAL_SEARCHMODE                = TEXT!`SearchMode`,
    REGSTR_VAL_SHELLVERSION              = TEXT!`ShellVersion`,
    REGSTR_VAL_MAXLIP                    = TEXT!`MaxLIP`,
    REGSTR_VAL_PRESERVECASE              = TEXT!`PreserveCase`,
    REGSTR_VAL_OPTIMIZESFN               = TEXT!`OptimizeSFN`,
    REGSTR_VAL_NCP_BROWSEMASTER          = TEXT!`BrowseMaster`,
    REGSTR_VAL_NCP_USEPEERBROWSING       = TEXT!`Use_PeerBrowsing`,
    REGSTR_VAL_NCP_USESAP                = TEXT!`Use_Sap`,
    REGSTR_VAL_WIN31FILESYSTEM           = TEXT!`Win31FileSystem`,
    REGSTR_VAL_PRESERVELONGNAMES         = TEXT!`PreserveLongNames`,
    REGSTR_VAL_DRIVEWRITEBEHIND          = TEXT!`DriveWriteBehind`,
    REGSTR_VAL_ASYNCFILECOMMIT           = TEXT!`AsyncFileCommit`,
    REGSTR_VAL_PATHCACHECOUNT            = TEXT!`PathCache`,
    REGSTR_VAL_NAMECACHECOUNT            = TEXT!`NameCache`,
    REGSTR_VAL_CONTIGFILEALLOC           = TEXT!`ContigFileAllocSize`,
    REGSTR_VAL_VOLIDLETIMEOUT            = TEXT!`VolumeIdleTimeout`,
    REGSTR_VAL_BUFFIDLETIMEOUT           = TEXT!`BufferIdleTimeout`,
    REGSTR_VAL_BUFFAGETIMEOUT            = TEXT!`BufferAgeTimeout`,
    REGSTR_VAL_NAMENUMERICTAIL           = TEXT!`NameNumericTail`,
    REGSTR_VAL_READAHEADTHRESHOLD        = TEXT!`ReadAheadThreshold`,
    REGSTR_VAL_DOUBLEBUFFER              = TEXT!`DoubleBuffer`,
    REGSTR_VAL_SOFTCOMPATMODE            = TEXT!`SoftCompatMode`,
    REGSTR_VAL_DRIVESPINDOWN             = TEXT!`DriveSpinDown`,
    REGSTR_VAL_FORCEPMIO                 = TEXT!`ForcePMIO`,
    REGSTR_VAL_FORCERMIO                 = TEXT!`ForceRMIO`,
    REGSTR_VAL_LASTBOOTPMDRVS            = TEXT!`LastBootPMDrvs`,
    REGSTR_VAL_VIRTUALHDIRQ              = TEXT!`VirtualHDIRQ`,
    REGSTR_VAL_SRVNAMECACHECOUNT         = TEXT!`ServerNameCacheMax`,
    REGSTR_VAL_SRVNAMECACHE              = TEXT!`ServerNameCache`,
    REGSTR_VAL_SRVNAMECACHENETPROV       = TEXT!`ServerNameCacheNumNets`,
    REGSTR_VAL_AUTOMOUNT                 = TEXT!`AutoMountDrives`,
    REGSTR_VAL_COMPRESSIONMETHOD         = TEXT!`CompressionAlgorithm`,
    REGSTR_VAL_COMPRESSIONTHRESHOLD      = TEXT!`CompressionThreshold`,
    REGSTR_VAL_CDCACHESIZE               = TEXT!`CacheSize`,
    REGSTR_VAL_CDPREFETCH                = TEXT!`Prefetch`,
    REGSTR_VAL_CDPREFETCHTAIL            = TEXT!`PrefetchTail`,
    REGSTR_VAL_CDRAWCACHE                = TEXT!`RawCache`,
    REGSTR_VAL_CDEXTERRORS               = TEXT!`ExtendedErrors`,
    REGSTR_VAL_CDSVDSENSE                = TEXT!`SVDSense`,
    REGSTR_VAL_CDSHOWVERSIONS            = TEXT!`ShowVersions`,
    REGSTR_VAL_CDCOMPATNAMES             = TEXT!`MSCDEXCompatNames`,
    REGSTR_VAL_CDNOREADAHEAD             = TEXT!`NoReadAhead`,
    REGSTR_VAL_SCSI                      = TEXT!`SCSI\`,
    REGSTR_VAL_ESDI                      = TEXT!`ESDI\`,
    REGSTR_VAL_FLOP                      = TEXT!`FLOP\`,
    REGSTR_VAL_DISK                      = TEXT!`GenDisk`,
    REGSTR_VAL_CDROM                     = TEXT!`GenCD`,
    REGSTR_VAL_TAPE                      = TEXT!`TAPE`,
    REGSTR_VAL_SCANNER                   = TEXT!`SCANNER`,
    REGSTR_VAL_FLOPPY                    = TEXT!`FLOPPY`,
    REGSTR_VAL_SCSITID                   = TEXT!`SCSITargetID`,
    REGSTR_VAL_SCSILUN                   = TEXT!`SCSILUN`,
    REGSTR_VAL_REVLEVEL                  = TEXT!`RevisionLevel`,
    REGSTR_VAL_PRODUCTID                 = TEXT!`ProductId`,
    REGSTR_VAL_PRODUCTTYPE               = TEXT!`ProductType`,
    REGSTR_VAL_DEVTYPE                   = TEXT!`DeviceType`,
    REGSTR_VAL_REMOVABLE                 = TEXT!`Removable`,
    REGSTR_VAL_CURDRVLET                 = TEXT!`CurrentDriveLetterAssignment`,
    REGSTR_VAL_USRDRVLET                 = TEXT!`UserDriveLetterAssignment`,
    REGSTR_VAL_SYNCDATAXFER              = TEXT!`SyncDataXfer`,
    REGSTR_VAL_AUTOINSNOTE               = TEXT!`AutoInsertNotification`,
    REGSTR_VAL_DISCONNECT                = TEXT!`Disconnect`,
    REGSTR_VAL_INT13                     = TEXT!`Int13`,
    REGSTR_VAL_PMODE_INT13               = TEXT!`PModeInt13`,
    REGSTR_VAL_USERSETTINGS              = TEXT!`AdapterSettings`,
    REGSTR_VAL_NOIDE                     = TEXT!`NoIDE`,
    REGSTR_VAL_DISKCLASSNAME             = TEXT!`DiskDrive`,
    REGSTR_VAL_CDROMCLASSNAME            = TEXT!`CDROM`,
    REGSTR_VAL_FORCELOAD                 = TEXT!`ForceLoadPD`,
    REGSTR_VAL_FORCEFIFO                 = TEXT!`ForceFIFO`,
    REGSTR_VAL_FORCECL                   = TEXT!`ForceChangeLine`,
    REGSTR_VAL_NOUSECLASS                = TEXT!`NoUseClass`,
    REGSTR_VAL_NOINSTALLCLASS            = TEXT!`NoInstallClass`,
    REGSTR_VAL_NODISPLAYCLASS            = TEXT!`NoDisplayClass`,
    REGSTR_VAL_SILENTINSTALL             = TEXT!`SilentInstall`,
    REGSTR_KEY_PCMCIA_CLASS              = TEXT!`PCMCIA`,
    REGSTR_KEY_SCSI_CLASS                = TEXT!`SCSIAdapter`,
    REGSTR_KEY_PORTS_CLASS               = TEXT!`ports`,
    REGSTR_KEY_MEDIA_CLASS               = TEXT!`MEDIA`,
    REGSTR_KEY_DISPLAY_CLASS             = TEXT!`Display`,
    REGSTR_KEY_KEYBOARD_CLASS            = TEXT!`Keyboard`,
    REGSTR_KEY_MOUSE_CLASS               = TEXT!`Mouse`,
    REGSTR_KEY_MONITOR_CLASS             = TEXT!`Monitor`,
    REGSTR_VAL_PCMCIA_OPT                = TEXT!`Options`,
    REGSTR_VAL_PCMCIA_MEM                = TEXT!`Memory`,
    REGSTR_VAL_PCMCIA_ALLOC              = TEXT!`AllocMemWin`,
    REGSTR_VAL_PCMCIA_ATAD               = TEXT!`ATADelay`,
    REGSTR_VAL_PCMCIA_SIZ                = TEXT!`MinRegionSize`,
    REGSTR_VAL_P1284MDL                  = TEXT!`Model`,
    REGSTR_VAL_P1284MFG                  = TEXT!`Manufacturer`,
    REGSTR_VAL_ISAPNP                    = TEXT!`ISAPNP`,
    REGSTR_VAL_ISAPNP_RDP_OVERRIDE       = TEXT!`RDPOverRide`,
    REGSTR_VAL_PCI                       = TEXT!`PCI`,
    REGSTR_PCI_OPTIONS                   = TEXT!`Options`,
    REGSTR_PCI_DUAL_IDE                  = TEXT!`PCIDualIDE`;

const TCHAR[]
    REGSTR_KEY_CRASHES                   = TEXT!`Crashes`,
    REGSTR_KEY_DANGERS                   = TEXT!`Dangers`,
    REGSTR_KEY_DETMODVARS                = TEXT!`DetModVars`,
    REGSTR_KEY_NDISINFO                  = TEXT!`NDISInfo`,
    REGSTR_VAL_PROTINIPATH               = TEXT!`ProtIniPath`,
    REGSTR_VAL_RESOURCES                 = TEXT!`Resources`,
    REGSTR_VAL_CRASHFUNCS                = TEXT!`CrashFuncs`,
    REGSTR_VAL_CLASS                     = TEXT!`Class`,
    REGSTR_VAL_DEVDESC                   = TEXT!`DeviceDesc`,
    REGSTR_VAL_BOOTCONFIG                = TEXT!`BootConfig`,
    REGSTR_VAL_DETFUNC                   = TEXT!`DetFunc`,
    REGSTR_VAL_DETFLAGS                  = TEXT!`DetFlags`,
    REGSTR_VAL_COMPATIBLEIDS             = TEXT!`CompatibleIDs`,
    REGSTR_VAL_DETCONFIG                 = TEXT!`DetConfig`,
    REGSTR_VAL_VERIFYKEY                 = TEXT!`VerifyKey`,
    REGSTR_VAL_COMINFO                   = TEXT!`ComInfo`,
    REGSTR_VAL_INFNAME                   = TEXT!`InfName`,
    REGSTR_VAL_CARDSPECIFIC              = TEXT!`CardSpecific`,
    REGSTR_VAL_NETOSTYPE                 = TEXT!`NetOSType`,
    REGSTR_DATA_NETOS_NDIS               = TEXT!`NDIS`,
    REGSTR_DATA_NETOS_ODI                = TEXT!`ODI`,
    REGSTR_DATA_NETOS_IPX                = TEXT!`IPX`,
    REGSTR_VAL_MFG                       = TEXT!`Mfg`,
    REGSTR_VAL_SCAN_ONLY_FIRST           = TEXT!`ScanOnlyFirstDrive`,
    REGSTR_VAL_SHARE_IRQ                 = TEXT!`ForceIRQSharing`,
    REGSTR_VAL_NONSTANDARD_ATAPI         = TEXT!`NonStandardATAPI`,
    REGSTR_VAL_IDE_FORCE_SERIALIZE       = TEXT!`ForceSerialization`,
    REGSTR_VAL_HWREV                     = TEXT!`HWRevision`,
    REGSTR_VAL_ENABLEINTS                = TEXT!`EnableInts`,

    REGSTR_VAL_APMBIOSVER                = TEXT!`APMBiosVer`,
    REGSTR_VAL_APMFLAGS                  = TEXT!`APMFlags`,
    REGSTR_VAL_SLSUPPORT                 = TEXT!`SLSupport`,
    REGSTR_VAL_MACHINETYPE               = TEXT!`MachineType`,
    REGSTR_VAL_SETUPMACHINETYPE          = TEXT!`SetupMachineType`,
    REGSTR_MACHTYPE_UNKNOWN              = TEXT!`Unknown`,
    REGSTR_MACHTYPE_IBMPC                = TEXT!`IBM PC`,
    REGSTR_MACHTYPE_IBMPCJR              = TEXT!`IBM PCjr`,
    REGSTR_MACHTYPE_IBMPCCONV            = TEXT!`IBM PC Convertible`,
    REGSTR_MACHTYPE_IBMPCXT              = TEXT!`IBM PC/XT`,
    REGSTR_MACHTYPE_IBMPCXT_286          = TEXT!`IBM PC/XT 286`,
    REGSTR_MACHTYPE_IBMPCAT              = TEXT!`IBM PC/AT`,
    REGSTR_MACHTYPE_IBMPS2_25            = TEXT!`IBM PS/2-25`,
    REGSTR_MACHTYPE_IBMPS2_30_286        = TEXT!`IBM PS/2-30 286`,
    REGSTR_MACHTYPE_IBMPS2_30            = TEXT!`IBM PS/2-30`,
    REGSTR_MACHTYPE_IBMPS2_50            = TEXT!`IBM PS/2-50`,
    REGSTR_MACHTYPE_IBMPS2_50Z           = TEXT!`IBM PS/2-50Z`,
    REGSTR_MACHTYPE_IBMPS2_55SX          = TEXT!`IBM PS/2-55SX`,
    REGSTR_MACHTYPE_IBMPS2_60            = TEXT!`IBM PS/2-60`,
    REGSTR_MACHTYPE_IBMPS2_65SX          = TEXT!`IBM PS/2-65SX`,
    REGSTR_MACHTYPE_IBMPS2_70            = TEXT!`IBM PS/2-70`,
    REGSTR_MACHTYPE_IBMPS2_P70           = TEXT!`IBM PS/2-P70`,
    REGSTR_MACHTYPE_IBMPS2_70_80         = TEXT!`IBM PS/2-70/80`,
    REGSTR_MACHTYPE_IBMPS2_80            = TEXT!`IBM PS/2-80`,
    REGSTR_MACHTYPE_IBMPS2_90            = TEXT!`IBM PS/2-90`,
    REGSTR_MACHTYPE_IBMPS1               = TEXT!`IBM PS/1`,
    REGSTR_MACHTYPE_PHOENIX_PCAT         = TEXT!`Phoenix PC/AT Compatible`,
    REGSTR_MACHTYPE_HP_VECTRA            = TEXT!`HP Vectra`,
    REGSTR_MACHTYPE_ATT_PC               = TEXT!`AT&T PC`,
    REGSTR_MACHTYPE_ZENITH_PC            = TEXT!`Zenith PC`,
    REGSTR_VAL_APMMENUSUSPEND            = TEXT!`APMMenuSuspend`,

    REGSTR_VAL_BUSTYPE                   = TEXT!`BusType`,
    REGSTR_VAL_CPU                       = TEXT!`CPU`,
    REGSTR_VAL_NDP                       = TEXT!`NDP`,
    REGSTR_VAL_PNPBIOSVER                = TEXT!`PnPBIOSVer`,
    REGSTR_VAL_PNPSTRUCOFFSET            = TEXT!`PnPStrucOffset`,
    REGSTR_VAL_PCIBIOSVER                = TEXT!`PCIBIOSVer`,
    REGSTR_VAL_HWMECHANISM               = TEXT!`HWMechanism`,
    REGSTR_VAL_LASTPCIBUSNUM             = TEXT!`LastPCIBusNum`,
    REGSTR_VAL_CONVMEM                   = TEXT!`ConvMem`,
    REGSTR_VAL_EXTMEM                    = TEXT!`ExtMem`,
    REGSTR_VAL_COMPUTERNAME              = TEXT!`ComputerName`,
    REGSTR_VAL_BIOSNAME                  = TEXT!`BIOSName`,
    REGSTR_VAL_BIOSVERSION               = TEXT!`BIOSVersion`,
    REGSTR_VAL_BIOSDATE                  = TEXT!`BIOSDate`,
    REGSTR_VAL_MODEL                     = TEXT!`Model`,
    REGSTR_VAL_SUBMODEL                  = TEXT!`Submodel`,
    REGSTR_VAL_REVISION                  = TEXT!`Revision`,
    REGSTR_VAL_FIFODEPTH                 = TEXT!`FIFODepth`,
    REGSTR_VAL_RDINTTHRESHOLD            = TEXT!`RDIntThreshold`,
    REGSTR_VAL_WRINTTHRESHOLD            = TEXT!`WRIntThreshold`,
    REGSTR_VAL_PRIORITY                  = TEXT!`Priority`,
    REGSTR_VAL_DRIVER                    = TEXT!`Driver`,
    REGSTR_VAL_FUNCDESC                  = TEXT!`FunctionDesc`,
    REGSTR_VAL_FORCEDCONFIG              = TEXT!`ForcedConfig`,
    REGSTR_VAL_CONFIGFLAGS               = TEXT!`ConfigFlags`,
    REGSTR_VAL_CSCONFIGFLAGS             = TEXT!`CSConfigFlags`,

    REGSTR_VAL_ROOT_DEVNODE              = TEXT!`HTREE\ROOT\0`,
    REGSTR_VAL_RESERVED_DEVNODE          = TEXT!`HTREE\RESERVED\0`,
    REGSTR_PATH_READDATAPORT             = REGSTR_KEY_ISAENUM ~ TEXT!`\ReadDataPort\0`,
    REGSTR_PATH_MULTI_FUNCTION           = TEXT!`MF`,
    REGSTR_VAL_RESOURCE_MAP              = TEXT!`ResourceMap`,
    REGSTR_PATH_CHILD_PREFIX             = TEXT!`Child`,
    REGSTR_VAL_MF_FLAGS                  = TEXT!`MFFlags`,
    REGSTR_VAL_DRVDESC                   = TEXT!`DriverDesc`,
    REGSTR_VAL_DEVLOADER                 = TEXT!`DevLoader`,
    REGSTR_VAL_STATICVXD                 = TEXT!`StaticVxD`,
    REGSTR_VAL_PROPERTIES                = TEXT!`Properties`,
    REGSTR_VAL_MANUFACTURER              = TEXT!`Manufacturer`,
    REGSTR_VAL_EXISTS                    = TEXT!`Exists`,
    REGSTR_VAL_CMENUMFLAGS               = TEXT!`CMEnumFlags`,
    REGSTR_VAL_CMDRIVFLAGS               = TEXT!`CMDrivFlags`,
    REGSTR_VAL_ENUMERATOR                = TEXT!`Enumerator`,
    REGSTR_VAL_DEVICEDRIVER              = TEXT!`DeviceDriver`,
    REGSTR_VAL_PORTNAME                  = TEXT!`PortName`,
    REGSTR_VAL_INFPATH                   = TEXT!`InfPath`,
    REGSTR_VAL_INFSECTION                = TEXT!`InfSection`,
    REGSTR_VAL_POLLING                   = TEXT!`Polling`,
    REGSTR_VAL_DONTLOADIFCONFLICT        = TEXT!`DontLoadIfConflict`,
    REGSTR_VAL_PORTSUBCLASS              = TEXT!`PortSubClass`,
    REGSTR_VAL_NETCLEAN                  = TEXT!`NetClean`,
    REGSTR_VAL_IDE_NO_SERIALIZE          = TEXT!`IDENoSerialize`,
    REGSTR_VAL_NOCMOSORFDPT              = TEXT!`NoCMOSorFDPT`,
    REGSTR_VAL_COMVERIFYBASE             = TEXT!`COMVerifyBase`,
    REGSTR_KEY_OVERRIDE                  = TEXT!`Override`,
    REGSTR_VAL_CONFIGMG                  = TEXT!`CONFIGMG`,
    REGSTR_VAL_SYSDM                     = TEXT!`SysDM`,
    REGSTR_VAL_SYSDMFUNC                 = TEXT!`SysDMFunc`,
    REGSTR_VAL_PRIVATE                   = TEXT!`Private`,
    REGSTR_VAL_PRIVATEFUNC               = TEXT!`PrivateFunc`,
    REGSTR_VAL_DETECT                    = TEXT!`Detect`,
    REGSTR_VAL_DETECTFUNC                = TEXT!`DetectFunc`,
    REGSTR_VAL_ASKFORCONFIG              = TEXT!`AskForConfig`,
    REGSTR_VAL_ASKFORCONFIGFUNC          = TEXT!`AskForConfigFunc`,
    REGSTR_VAL_WAITFORUNDOCK             = TEXT!`WaitForUndock`,
    REGSTR_VAL_WAITFORUNDOCKFUNC         = TEXT!`WaitForUndockFunc`,
    REGSTR_VAL_REMOVEROMOKAY             = TEXT!`RemoveRomOkay`,
    REGSTR_VAL_REMOVEROMOKAYFUNC         = TEXT!`RemoveRomOkayFunc`,
    REGSTR_VAL_CURCONFIG                 = TEXT!`CurrentConfig`,
    REGSTR_VAL_FRIENDLYNAME              = TEXT!`FriendlyName`,
    REGSTR_VAL_CURRENTCONFIG             = TEXT!`CurrentConfig`,
    REGSTR_VAL_MAP                       = TEXT!`Map`,
    REGSTR_VAL_ID                        = TEXT!`CurrentID`,
    REGSTR_VAL_DOCKED                    = TEXT!`CurrentDockedState`,
    REGSTR_VAL_CHECKSUM                  = TEXT!`CurrentChecksum`,
    REGSTR_VAL_HWDETECT                  = TEXT!`HardwareDetect`,
    REGSTR_VAL_INHIBITRESULTS            = TEXT!`InhibitResults`,
    REGSTR_VAL_PROFILEFLAGS              = TEXT!`ProfileFlags`,
    REGSTR_KEY_PCMCIA                    = TEXT!`PCMCIA\`,
    REGSTR_KEY_PCUNKNOWN                 = TEXT!`UNKNOWN_MANUFACTURER`,
    REGSTR_VAL_PCSSDRIVER                = TEXT!`Driver`,
    REGSTR_KEY_PCMTD                     = TEXT!`MTD-`,
    REGSTR_VAL_PCMTDRIVER                = TEXT!`MTD`,
    REGSTR_VAL_HARDWAREID                = TEXT!`HardwareID`,
    REGSTR_VAL_INSTALLER                 = TEXT!`Installer`,
    REGSTR_VAL_INSICON                   = TEXT!`Icon`,
    REGSTR_VAL_ENUMPROPPAGES             = TEXT!`EnumPropPages`,
    REGSTR_VAL_BASICPROPERTIES           = TEXT!`BasicProperties`,
    REGSTR_VAL_PRIVATEPROBLEM            = TEXT!`PrivateProblem`,
    REGSTR_KEY_CURRENT                   = TEXT!`Current`,
    REGSTR_KEY_DEFAULT                   = TEXT!`Default`,
    REGSTR_KEY_MODES                     = TEXT!`Modes`,
    REGSTR_VAL_MODE                      = TEXT!`Mode`,
    REGSTR_VAL_BPP                       = TEXT!`BPP`,
    REGSTR_VAL_HRES                      = TEXT!`HRes`,
    REGSTR_VAL_VRES                      = TEXT!`VRes`,
    REGSTR_VAL_FONTSIZE                  = TEXT!`FontSize`,
    REGSTR_VAL_DRV                       = TEXT!`drv`,
    REGSTR_VAL_GRB                       = TEXT!`grb`,
    REGSTR_VAL_VDD                       = TEXT!`vdd`,
    REGSTR_VAL_VER                       = TEXT!`Ver`,
    REGSTR_VAL_MAXRES                    = TEXT!`MaxResolution`,
    REGSTR_VAL_DPMS                      = TEXT!`DPMS`,
    REGSTR_VAL_RESUMERESET               = TEXT!`ResumeReset`,
    REGSTR_VAL_DESCRIPTION               = TEXT!`Description`,
    REGSTR_KEY_SYSTEM                    = TEXT!`System`,
    REGSTR_KEY_USER                      = TEXT!`User`,
    REGSTR_VAL_DPI                       = TEXT!`dpi`,
    REGSTR_VAL_PCICOPTIONS               = TEXT!`PCICOptions`;

const TCHAR[]
    REGSTR_VAL_PCICIRQMAP                = TEXT!`PCICIRQMap`,
    REGSTR_PATH_APPEARANCE               = TEXT!`Control Panel\Appearance`,
    REGSTR_PATH_LOOKSCHEMES              = TEXT!`Control Panel\Appearance\Schemes`,
    REGSTR_VAL_CUSTOMCOLORS              = TEXT!`CustomColors`,
    REGSTR_PATH_SCREENSAVE               = TEXT!`Control Panel\Desktop`,
    REGSTR_VALUE_USESCRPASSWORD          = TEXT!`ScreenSaveUsePassword`,
    REGSTR_VALUE_SCRPASSWORD             = TEXT!`ScreenSave_Data`,
    REGSTR_VALUE_LOWPOWERTIMEOUT         = TEXT!`ScreenSaveLowPowerTimeout`,
    REGSTR_VALUE_POWEROFFTIMEOUT         = TEXT!`ScreenSavePowerOffTimeout`,
    REGSTR_VALUE_LOWPOWERACTIVE          = TEXT!`ScreenSaveLowPowerActive`,
    REGSTR_VALUE_POWEROFFACTIVE          = TEXT!`ScreenSavePowerOffActive`,
    REGSTR_PATH_WINDOWSAPPLETS           = TEXT!`Software\Microsoft\Windows\CurrentVersion\Applets`,
    REGSTR_PATH_SYSTRAY                  = TEXT!`Software\Microsoft\Windows\CurrentVersion\Applets\SysTray`,
    REGSTR_VAL_SYSTRAYSVCS               = TEXT!`Services`,
    REGSTR_VAL_SYSTRAYBATFLAGS           = TEXT!`PowerFlags`,
    REGSTR_VAL_SYSTRAYPCCARDFLAGS        = TEXT!`PCMCIAFlags`,
    REGSTR_PATH_NETWORK_USERSETTINGS     = TEXT!`Network`,
    REGSTR_KEY_NETWORK_PERSISTENT        = TEXT!`\Persistent`,
    REGSTR_KEY_NETWORK_RECENT            = TEXT!`\Recent`,
    REGSTR_VAL_REMOTE_PATH               = TEXT!`RemotePath`,
    REGSTR_VAL_USER_NAME                 = TEXT!`UserName`,
    REGSTR_VAL_PROVIDER_NAME             = TEXT!`ProviderName`,
    REGSTR_VAL_CONNECTION_TYPE           = TEXT!`ConnectionType`,
    REGSTR_VAL_UPGRADE                   = TEXT!`Upgrade`,
    REGSTR_KEY_LOGON                     = TEXT!`\Logon`,
    REGSTR_VAL_MUSTBEVALIDATED           = TEXT!`MustBeValidated`,
    REGSTR_VAL_RUNLOGINSCRIPT            = TEXT!`ProcessLoginScript`,
    REGSTR_KEY_NETWORKPROVIDER           = TEXT!`\NetworkProvider`,
    REGSTR_PATH_NW32NETPROVIDER          = REGSTR_PATH_SERVICES ~ TEXT!`\NWNP32` ~ REGSTR_KEY_NETWORKPROVIDER,
    REGSTR_PATH_MS32NETPROVIDER          = REGSTR_PATH_SERVICES ~ TEXT!`\MSNP32` ~ REGSTR_KEY_NETWORKPROVIDER,
    REGSTR_VAL_AUTHENT_AGENT             = TEXT!`AuthenticatingAgent`,
    REGSTR_VAL_PREFREDIR                 = TEXT!`PreferredRedir`,
    REGSTR_VAL_AUTOSTART                 = TEXT!`AutoStart`,
    REGSTR_VAL_AUTOLOGON                 = TEXT!`AutoLogon`,
    REGSTR_VAL_NETCARD                   = TEXT!`Netcard`,
    REGSTR_VAL_TRANSPORT                 = TEXT!`Transport`,
    REGSTR_VAL_DYNAMIC                   = TEXT!`Dynamic`,
    REGSTR_VAL_TRANSITION                = TEXT!`Transition`,
    REGSTR_VAL_STATICDRIVE               = TEXT!`StaticDrive`,
    REGSTR_VAL_LOADHI                    = TEXT!`LoadHi`,
    REGSTR_VAL_LOADRMDRIVERS             = TEXT!`LoadRMDrivers`,
    REGSTR_VAL_SETUPN                    = TEXT!`SetupN`,
    REGSTR_VAL_SETUPNPATH                = TEXT!`SetupNPath`,
    REGSTR_VAL_WRKGRP_FORCEMAPPING       = TEXT!`WrkgrpForceMapping`,
    REGSTR_VAL_WRKGRP_REQUIRED           = TEXT!`WrkgrpRequired`,
    REGSTR_PATH_CURRENT_CONTROL_SET      = TEXT!`System\CurrentControlSet\Control`,
    REGSTR_VAL_CURRENT_USER              = TEXT!`Current User`,
    REGSTR_PATH_PWDPROVIDER              = TEXT!`System\CurrentControlSet\Control\PwdProvider`,
    REGSTR_VAL_PWDPROVIDER_PATH          = TEXT!`ProviderPath`,
    REGSTR_VAL_PWDPROVIDER_DESC          = TEXT!`Description`,
    REGSTR_VAL_PWDPROVIDER_CHANGEPWD     = TEXT!`ChangePassword`,
    REGSTR_VAL_PWDPROVIDER_CHANGEPWDHWND = TEXT!`ChangePasswordHwnd`,
    REGSTR_VAL_PWDPROVIDER_GETPWDSTATUS  = TEXT!`GetPasswordStatus`,
    REGSTR_VAL_PWDPROVIDER_ISNP          = TEXT!`NetworkProvider`,
    REGSTR_VAL_PWDPROVIDER_CHANGEORDER   = TEXT!`ChangeOrder`,
    REGSTR_PATH_POLICIES                 = TEXT!`Software\Microsoft\Windows\CurrentVersion\Policies`,
    REGSTR_PATH_UPDATE                   = TEXT!`System\CurrentControlSet\Control\Update`,
    REGSTR_VALUE_ENABLE                  = TEXT!`Enable`,
    REGSTR_VALUE_VERBOSE                 = TEXT!`Verbose`,
    REGSTR_VALUE_NETPATH                 = TEXT!`NetworkPath`,
    REGSTR_VALUE_DEFAULTLOC              = TEXT!`UseDefaultNetLocation`,
    REGSTR_KEY_NETWORK                   = TEXT!`Network`,
// [Redefined] REGSTR_KEY_SYSTEM         = TEXT!`System`)
    REGSTR_KEY_PRINTERS                  = TEXT!`Printers`,
    REGSTR_KEY_WINOLDAPP                 = TEXT!`WinOldApp`,
    REGSTR_VAL_NOFILESHARING             = TEXT!`NoFileSharing`,
    REGSTR_VAL_NOPRINTSHARING            = TEXT!`NoPrintSharing`,
    REGSTR_VAL_NOFILESHARINGCTRL         = TEXT!`NoFileSharingControl`,
    REGSTR_VAL_NOPRINTSHARINGCTRL        = TEXT!`NoPrintSharingControl`,
    REGSTR_VAL_HIDESHAREPWDS             = TEXT!`HideSharePwds`,
    REGSTR_VAL_DISABLEPWDCACHING         = TEXT!`DisablePwdCaching`,
    REGSTR_VAL_ALPHANUMPWDS              = TEXT!`AlphanumPwds`,
    REGSTR_VAL_NETSETUP_DISABLE          = TEXT!`NoNetSetup`,
    REGSTR_VAL_NETSETUP_NOCONFIGPAGE     = TEXT!`NoNetSetupConfigPage`,
    REGSTR_VAL_NETSETUP_NOIDPAGE         = TEXT!`NoNetSetupIDPage`,
    REGSTR_VAL_NETSETUP_NOSECURITYPAGE   = TEXT!`NoNetSetupSecurityPage`,
    REGSTR_VAL_SYSTEMCPL_NOVIRTMEMPAGE   = TEXT!`NoVirtMemPage`,
    REGSTR_VAL_SYSTEMCPL_NODEVMGRPAGE    = TEXT!`NoDevMgrPage`,
    REGSTR_VAL_SYSTEMCPL_NOCONFIGPAGE    = TEXT!`NoConfigPage`,
    REGSTR_VAL_SYSTEMCPL_NOFILESYSPAGE   = TEXT!`NoFileSysPage`,
    REGSTR_VAL_DISPCPL_NODISPCPL         = TEXT!`NoDispCPL`,
    REGSTR_VAL_DISPCPL_NOBACKGROUNDPAGE  = TEXT!`NoDispBackgroundPage`,
    REGSTR_VAL_DISPCPL_NOSCRSAVPAGE      = TEXT!`NoDispScrSavPage`,
    REGSTR_VAL_DISPCPL_NOAPPEARANCEPAGE  = TEXT!`NoDispAppearancePage`,
    REGSTR_VAL_DISPCPL_NOSETTINGSPAGE    = TEXT!`NoDispSettingsPage`,
    REGSTR_VAL_SECCPL_NOSECCPL           = TEXT!`NoSecCPL`,
    REGSTR_VAL_SECCPL_NOPWDPAGE          = TEXT!`NoPwdPage`,
    REGSTR_VAL_SECCPL_NOADMINPAGE        = TEXT!`NoAdminPage`,
    REGSTR_VAL_SECCPL_NOPROFILEPAGE      = TEXT!`NoProfilePage`,
    REGSTR_VAL_PRINTERS_HIDETABS         = TEXT!`NoPrinterTabs`,
    REGSTR_VAL_PRINTERS_NODELETE         = TEXT!`NoDeletePrinter`,
    REGSTR_VAL_PRINTERS_NOADD            = TEXT!`NoAddPrinter`,
    REGSTR_VAL_WINOLDAPP_DISABLED        = TEXT!`Disabled`,
    REGSTR_VAL_WINOLDAPP_NOREALMODE      = TEXT!`NoRealMode`,
    REGSTR_VAL_NOENTIRENETWORK           = TEXT!`NoEntireNetwork`,
    REGSTR_VAL_NOWORKGROUPCONTENTS       = TEXT!`NoWorkgroupContents`,
    REGSTR_VAL_MINPWDLEN                 = TEXT!`MinPwdLen`,
    REGSTR_VAL_PWDEXPIRATION             = TEXT!`PwdExpiration`,
    REGSTR_VAL_WIN31PROVIDER             = TEXT!`Win31Provider`,
    REGSTR_VAL_DISABLEREGTOOLS           = TEXT!`DisableRegistryTools`,
    REGSTR_PATH_WINLOGON                 = TEXT!`Software\Microsoft\Windows\CurrentVersion\Winlogon`,
    REGSTR_VAL_LEGALNOTICECAPTION        = TEXT!`LegalNoticeCaption`,
    REGSTR_VAL_LEGALNOTICETEXT           = TEXT!`LegalNoticeText`,
    REGSTR_VAL_RESTRICTRUN               = TEXT!`RestrictRun`,
    REGSTR_KEY_POL_USERS                 = TEXT!`Users`,
    REGSTR_KEY_POL_COMPUTERS             = TEXT!`Computers`,
    REGSTR_KEY_POL_USERGROUPS            = TEXT!`UserGroups`,
    REGSTR_KEY_POL_DEFAULT               = TEXT!`.default`,
    REGSTR_KEY_POL_USERGROUPDATA         = TEXT!`GroupData\UserGroups\Priority`,
    REGSTR_PATH_TIMEZONE                 = TEXT!`System\CurrentControlSet\Control\TimeZoneInformation`,
    REGSTR_VAL_TZBIAS                    = TEXT!`Bias`,
    REGSTR_VAL_TZDLTBIAS                 = TEXT!`DaylightBias`,
    REGSTR_VAL_TZSTDBIAS                 = TEXT!`StandardBias`,
    REGSTR_VAL_TZACTBIAS                 = TEXT!`ActiveTimeBias`,
    REGSTR_VAL_TZDLTFLAG                 = TEXT!`DaylightFlag`,
    REGSTR_VAL_TZSTDSTART                = TEXT!`StandardStart`,
    REGSTR_VAL_TZDLTSTART                = TEXT!`DaylightStart`,
    REGSTR_VAL_TZDLTNAME                 = TEXT!`DaylightName`,
    REGSTR_VAL_TZSTDNAME                 = TEXT!`StandardName`,
    REGSTR_VAL_TZNOCHANGESTART           = TEXT!`NoChangeStart`,
    REGSTR_VAL_TZNOCHANGEEND             = TEXT!`NoChangeEnd`,
    REGSTR_VAL_TZNOAUTOTIME              = TEXT!`DisableAutoDaylightTimeSet`,
    REGSTR_PATH_FLOATINGPOINTPROCESSOR   = TEXT!`HARDWARE\DESCRIPTION\System\FloatingPointProcessor`,
    REGSTR_PATH_FLOATINGPOINTPROCESSOR0  = TEXT!`HARDWARE\DESCRIPTION\System\FloatingPointProcessor\0`,
    REGSTR_PATH_COMPUTRNAME              = TEXT!`System\CurrentControlSet\Control\ComputerName\ComputerName`,
    REGSTR_VAL_COMPUTRNAME               = TEXT!`ComputerName`,
    REGSTR_PATH_SHUTDOWN                 = TEXT!`System\CurrentControlSet\Control\Shutdown`,
    REGSTR_VAL_FORCEREBOOT               = TEXT!`ForceReboot`,
    REGSTR_VAL_SETUPPROGRAMRAN           = TEXT!`SetupProgramRan`,
    REGSTR_VAL_DOES_POLLING              = TEXT!`PollingSupportNeeded`,
    REGSTR_PATH_KNOWNDLLS                = TEXT!`System\CurrentControlSet\Control\SessionManager\KnownDLLs`,
    REGSTR_PATH_KNOWN16DLLS              = TEXT!`System\CurrentControlSet\Control\SessionManager\Known16DLLs`,
    REGSTR_PATH_CHECKVERDLLS             = TEXT!`System\CurrentControlSet\Control\SessionManager\CheckVerDLLs`,
    REGSTR_PATH_WARNVERDLLS              = TEXT!`System\CurrentControlSet\Control\SessionManager\WarnVerDLLs`,
    REGSTR_PATH_HACKINIFILE              = TEXT!`System\CurrentControlSet\Control\SessionManager\HackIniFiles`,
    REGSTR_PATH_CHECKBADAPPS             = TEXT!`System\CurrentControlSet\Control\SessionManager\CheckBadApps`,
    REGSTR_PATH_APPPATCH                 = TEXT!`System\CurrentControlSet\Control\SessionManager\AppPatches`,
    REGSTR_PATH_KNOWNVXDS                = TEXT!`System\CurrentControlSet\Control\SessionManager\KnownVxDs`,
    REGSTR_VAL_UNINSTALLER_DISPLAYNAME   = TEXT!`DisplayName`,
    REGSTR_VAL_UNINSTALLER_COMMANDLINE   = TEXT!`UninstallString`,
    REGSTR_PATH_DESKTOP                  = REGSTR_PATH_SCREENSAVE,
    REGSTR_PATH_MOUSE                    = TEXT!`Control Panel\Mouse`,
    REGSTR_PATH_KEYBOARD                 = TEXT!`Control Panel\Keyboard`,
    REGSTR_PATH_COLORS                   = TEXT!`Control Panel\Colors`,
    REGSTR_PATH_SOUND                    = TEXT!`Control Panel\Sound`,
    REGSTR_PATH_METRICS                  = TEXT!`Control Panel\Desktop\WindowMetrics`,
    REGSTR_PATH_ICONS                    = TEXT!`Control Panel\Icons`,
    REGSTR_PATH_CURSORS                  = TEXT!`Control Panel\Cursors`,
    REGSTR_PATH_CHECKDISK                = TEXT!`Software\Microsoft\Windows\CurrentVersion\Applets\Check Drive`,
    REGSTR_PATH_CHECKDISKSET             = TEXT!`Settings`,
    REGSTR_PATH_CHECKDISKUDRVS           = TEXT!`NoUnknownDDErrDrvs`,
    REGSTR_PATH_FAULT                    = TEXT!`Software\Microsoft\Windows\CurrentVersion\Fault`,
    REGSTR_VAL_FAULT_LOGFILE             = TEXT!`LogFile`,
    REGSTR_PATH_AEDEBUG                  = TEXT!`Software\Microsoft\Windows NT\CurrentVersion\AeDebug`,
    REGSTR_VAL_AEDEBUG_DEBUGGER          = TEXT!`Debugger`,
    REGSTR_VAL_AEDEBUG_AUTO              = TEXT!`Auto`,
    REGSTR_PATH_GRPCONV                  = TEXT!`Software\Microsoft\Windows\CurrentVersion\GrpConv`,
    REGSTR_VAL_REGITEMDELETEMESSAGE      = TEXT!`Removal Message`,
    REGSTR_PATH_LASTCHECK                = TEXT!`Software\Microsoft\Windows\CurrentVersion\Explorer\LastCheck`,
    REGSTR_PATH_LASTOPTIMIZE             = TEXT!`Software\Microsoft\Windows\CurrentVersion\Explorer\LastOptimize`,
    REGSTR_PATH_LASTBACKUP               = TEXT!`Software\Microsoft\Windows\CurrentVersion\Explorer\LastBackup`,
    REGSTR_PATH_CHKLASTCHECK             = TEXT!`Software\Microsoft\Windows\CurrentVersion\Applets\Check Drive\LastCheck`,
    REGSTR_PATH_CHKLASTSURFAN            = TEXT!`Software\Microsoft\Windows\CurrentVersion\Applets\Check Drive\LastSurfaceAnalysis`,
    REGSTR_KEY_SHARES                    = TEXT!`Software\Microsoft\Windows\CurrentVersion\Network\LanMan`,
    REGSTR_VAL_SHARES_FLAGS              = TEXT!`Flags`,
    REGSTR_VAL_SHARES_TYPE               = TEXT!`Type`,
    REGSTR_VAL_SHARES_PATH               = TEXT!`Path`,
    REGSTR_VAL_SHARES_REMARK             = TEXT!`Remark`,
    REGSTR_VAL_SHARES_RW_PASS            = TEXT!`Parm1`,
    REGSTR_VAL_SHARES_RO_PASS            = TEXT!`Parm2`,
    REGSTR_PATH_PRINT                    = TEXT!`System\CurrentControlSet\Control\Print`,
    REGSTR_PATH_PRINTERS                 = TEXT!`System\CurrentControlSet\Control\Print\Printers`,
    REGSTR_PATH_PROVIDERS                = TEXT!`System\CurrentControlSet\Control\Print\Providers`,
    REGSTR_PATH_MONITORS                 = TEXT!`System\CurrentControlSet\Control\Print\Monitors`,
    REGSTR_PATH_ENVIRONMENTS             = TEXT!`System\CurrentControlSet\Control\Print\Environments`,
    REGSTR_VAL_START_ON_BOOT             = TEXT!`StartOnBoot`,
    REGSTR_VAL_PRINTERS_MASK             = TEXT!`PrintersMask`,
    REGSTR_VAL_DOS_SPOOL_MASK            = TEXT!`DOSSpoolMask`,
    REGSTR_KEY_CURRENT_ENV               = TEXT!`\Windows 4.0`,
    REGSTR_KEY_DRIVERS                   = TEXT!`\Drivers`,
    REGSTR_KEY_PRINT_PROC                = TEXT!`\Print Processors`,
    REGSTR_PATH_EVENTLABELS              = TEXT!`AppEvents\EventLabels`,
    REGSTR_PATH_SCHEMES                  = TEXT!`AppEvents\Schemes`,
    REGSTR_PATH_APPS                     = REGSTR_PATH_SCHEMES ~ TEXT!`\Apps`,
    REGSTR_PATH_APPS_DEFAULT             = REGSTR_PATH_SCHEMES ~ TEXT!`\Apps\.Default`,
    REGSTR_PATH_NAMES                    = REGSTR_PATH_SCHEMES ~ TEXT!`\Names`,
    REGSTR_PATH_MULTIMEDIA               = REGSTR_PATH_SETUP ~ TEXT!`\Multimedia`,
    REGSTR_PATH_MULTIMEDIA_AUDIO         = TEXT!`Software\Microsoft\Multimedia\Audio`,
    REGSTR_PATH_MEDIARESOURCES           = REGSTR_PATH_CURRENT_CONTROL_SET ~ TEXT!`\MediaResources`,
    REGSTR_PATH_MEDIAPROPERTIES          = REGSTR_PATH_CURRENT_CONTROL_SET ~ TEXT!`\MediaProperties`,
    REGSTR_PATH_PRIVATEPROPERTIES        = REGSTR_PATH_MEDIAPROPERTIES ~ TEXT!`\PrivateProperties`,
    REGSTR_PATH_PUBLICPROPERTIES         = REGSTR_PATH_MEDIAPROPERTIES ~ TEXT!`\PublicProperties`,
    REGSTR_PATH_JOYOEM                   = REGSTR_PATH_PRIVATEPROPERTIES ~ TEXT!`\Joystick\OEM`,
    REGSTR_PATH_JOYCONFIG                = REGSTR_PATH_MEDIARESOURCES ~ TEXT!`\Joystick`,
    REGSTR_KEY_JOYCURR                   = TEXT!`CurrentJoystickSettings`,
    REGSTR_KEY_JOYSETTINGS               = TEXT!`JoystickSettings`,
    REGSTR_VAL_JOYUSERVALUES             = TEXT!`JoystickUserValues`,
    REGSTR_VAL_JOYCALLOUT                = TEXT!`JoystickCallout`,
    REGSTR_VAL_JOYNCONFIG                = TEXT!`Joystick%dConfiguration`,
    REGSTR_VAL_JOYNOEMNAME               = TEXT!`Joystick%dOEMName`,
    REGSTR_VAL_JOYNOEMCALLOUT            = TEXT!`Joystick%dOEMCallout`,
    REGSTR_VAL_JOYOEMCALLOUT             = TEXT!`OEMCallout`,
    REGSTR_VAL_JOYOEMNAME                = TEXT!`OEMName`,
    REGSTR_VAL_JOYOEMDATA                = TEXT!`OEMData`,
    REGSTR_VAL_JOYOEMXYLABEL             = TEXT!`OEMXYLabel`,
    REGSTR_VAL_JOYOEMZLABEL              = TEXT!`OEMZLabel`,
    REGSTR_VAL_JOYOEMRLABEL              = TEXT!`OEMRLabel`,
    REGSTR_VAL_JOYOEMPOVLABEL            = TEXT!`OEMPOVLabel`,
    REGSTR_VAL_JOYOEMULABEL              = TEXT!`OEMULabel`,
    REGSTR_VAL_JOYOEMVLABEL              = TEXT!`OEMVLabel`,
    REGSTR_VAL_JOYOEMTESTMOVEDESC        = TEXT!`OEMTestMoveDesc`,
    REGSTR_VAL_JOYOEMTESTBUTTONDESC      = TEXT!`OEMTestButtonDesc`,
    REGSTR_VAL_JOYOEMTESTMOVECAP         = TEXT!`OEMTestMoveCap`,
    REGSTR_VAL_JOYOEMTESTBUTTONCAP       = TEXT!`OEMTestButtonCap`,
    REGSTR_VAL_JOYOEMTESTWINCAP          = TEXT!`OEMTestWinCap`,
    REGSTR_VAL_JOYOEMCALCAP              = TEXT!`OEMCalCap`,
    REGSTR_VAL_JOYOEMCALWINCAP           = TEXT!`OEMCalWinCap`,
    REGSTR_VAL_JOYOEMCAL1                = TEXT!`OEMCal1`,
    REGSTR_VAL_JOYOEMCAL2                = TEXT!`OEMCal2`,
    REGSTR_VAL_JOYOEMCAL3                = TEXT!`OEMCal3`,
    REGSTR_VAL_JOYOEMCAL4                = TEXT!`OEMCal4`,
    REGSTR_VAL_JOYOEMCAL5                = TEXT!`OEMCal5`,
    REGSTR_VAL_JOYOEMCAL6                = TEXT!`OEMCal6`,
    REGSTR_VAL_JOYOEMCAL7                = TEXT!`OEMCal7`,
    REGSTR_VAL_JOYOEMCAL8                = TEXT!`OEMCal8`,
    REGSTR_VAL_JOYOEMCAL9                = TEXT!`OEMCal9`,
    REGSTR_VAL_JOYOEMCAL10               = TEXT!`OEMCal10`,
    REGSTR_VAL_JOYOEMCAL11               = TEXT!`OEMCal11`,
    REGSTR_VAL_JOYOEMCAL12               = TEXT!`OEMCal12`;

enum {
    DTRESULTOK,
    DTRESULTFIX,
    DTRESULTPROB,
    DTRESULTPART
}

//#ifndef NEC_98
enum PCIC_DEFAULT_IRQMASK = 0x4EB8;
//#else
//#define PCIC_DEFAULT_IRQMASK  0x1468
//#endif
enum PCIC_DEFAULT_NUMSOCKETS = 0;

struct DSKTLSYSTEMTIME {
    WORD wYear;
    WORD wMonth;
    WORD wDayOfWeek;
    WORD wDay;
    WORD wHour;
    WORD wMinute;
    WORD wSecond;
    WORD wMilliseconds;
    WORD wResult;
}
alias DSKTLSYSTEMTIME* PDSKTLSYSTEMTIME, LPDSKTLSYSTEMTIME;
