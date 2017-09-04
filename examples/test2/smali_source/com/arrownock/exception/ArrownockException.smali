.class public Lcom/arrownock/exception/ArrownockException;
.super Ljava/lang/Exception;


# static fields
.field public static final IM_CONNECTION_BROKEN:I = 0xc22

.field public static final IM_FAILED_ADD_CLIENTS:I = 0x839

.field public static final IM_FAILED_BIND_SERVICE:I = 0x83b

.field public static final IM_FAILED_CONNECT:I = 0xc1e

.field public static final IM_FAILED_CREATE_SESSION:I = 0x840

.field public static final IM_FAILED_CREATE_TOPIC:I = 0x838

.field public static final IM_FAILED_DISCONNECT:I = 0xc1f

.field public static final IM_FAILED_GET_CHAT_HISTORY:I = 0x844

.field public static final IM_FAILED_GET_CLIENTS_STATUS:I = 0x83f

.field public static final IM_FAILED_GET_CLIENT_ID:I = 0x837

.field public static final IM_FAILED_GET_CLIENT_ID_LOCALLY:I = 0x836

.field public static final IM_FAILED_GET_SESSION_INFO:I = 0x841

.field public static final IM_FAILED_GET_TOPIC_HISTORY:I = 0x83e

.field public static final IM_FAILED_GET_TOPIC_INFO:I = 0x83d

.field public static final IM_FAILED_GET_TOPIC_LIST:I = 0x842

.field public static final IM_FAILED_INITIALIZE:I = 0x835

.field public static final IM_FAILED_PUBLISH:I = 0xc20

.field public static final IM_FAILED_REMOVE_CLIENTS:I = 0x83a

.field public static final IM_FAILED_REMOVE_TOPIC:I = 0x845

.field public static final IM_FAILED_SEND_NOTICE:I = 0x83c

.field public static final IM_FAILED_UPDATE_TOPIC:I = 0x843

.field public static final IM_FORCE_CLOSED:I = 0xc21

.field public static final IM_INVALID_ANID:I = 0x456

.field public static final IM_INVALID_ANPUSH_KEY:I = 0x457

.field public static final IM_INVALID_APP_CONTEXT:I = 0x44e

.field public static final IM_INVALID_APP_KEY:I = 0x44d

.field public static final IM_INVALID_CLIENTS:I = 0x455

.field public static final IM_INVALID_CLIENT_ID:I = 0x459

.field public static final IM_INVALID_MESSAGE_FORMAT:I = 0x452

.field public static final IM_INVALID_MESSAGE_ID:I = 0x450

.field public static final IM_INVALID_MESSAGE_SIZE:I = 0x451

.field public static final IM_INVALID_SESSIONID:I = 0x458

.field public static final IM_INVALID_TOPIC:I = 0x454

.field public static final IM_INVALID_TOPIC_NAME:I = 0x453

.field public static final IM_INVALID_USER_ID:I = 0x44f

.field public static final IM_SERVICE_UNAVAILABLE:I = 0xc1d

.field public static final LIVE_ALREADY_IN_CALL:I = 0x901

.field public static final LIVE_FAILED_CREATE_SESSION:I = 0x8fd

.field public static final LIVE_FAILED_ESTABLISH_CONN:I = 0x904

.field public static final LIVE_FAILED_INIT_CAMERA:I = 0x900

.field public static final LIVE_FAILED_INIT_MEDIA:I = 0x902

.field public static final LIVE_FAILED_PREPARE_LOCAL_MEDIA:I = 0x903

.field public static final LIVE_FAILED_TERMINATE_SESSION:I = 0x8ff

.field public static final LIVE_FAILED_VALIDATE_SESSION:I = 0x8fe

.field public static final LIVE_INVALID_CLIENT_ID:I = 0x517

.field public static final LIVE_INVALID_IM_INSTANCE:I = 0x515

.field public static final LIVE_INVALID_LISTENER:I = 0x516

.field public static final PUSH_DEVICE_NOT_REGISTERED:I = 0x7d2

.field public static final PUSH_FAILED_CONNECT:I = 0xbba

.field public static final PUSH_FAILED_DISCONNECT:I = 0xbbb

.field public static final PUSH_FAILED_GET_COMMAND:I = 0x7da

.field public static final PUSH_FAILED_GET_NOTIFICATION:I = 0x7da

.field public static final PUSH_FAILED_INITIALIZE:I = 0x7d1

.field public static final PUSH_FAILED_NO_GOOGLE_PLAY_SERVICES:I = 0x7d8

.field public static final PUSH_FAILED_REGISTER:I = 0x7d3

.field public static final PUSH_FAILED_SET_BADGE:I = 0x7d9

.field public static final PUSH_FAILED_SET_MUTE:I = 0x7d6

.field public static final PUSH_FAILED_SET_SILENT:I = 0x7d7

.field public static final PUSH_FAILED_UNREGISTER:I = 0x7d4

.field public static final PUSH_FAILED_UPDATE_REGISTRATION:I = 0x7d5

.field public static final PUSH_INVALID_APP_CONTEXT:I = 0x3ea

.field public static final PUSH_INVALID_APP_KEY:I = 0x3e9

.field public static final PUSH_INVALID_BADGE:I = 0x3f1

.field public static final PUSH_INVALID_CERTIFICATE:I = 0x3f0

.field public static final PUSH_INVALID_CHANNELS:I = 0x3ee

.field public static final PUSH_INVALID_DEVICE_ID:I = 0x3ed

.field public static final PUSH_INVALID_GCM_SENDER_ID:I = 0x3ec

.field public static final PUSH_INVALID_SERVICE_TYPE:I = 0x3eb

.field public static final PUSH_INVALID_TIME_RANGE:I = 0x3ef

.field public static final PUSH_SERVICE_UNAVAILABLE:I = 0xbb9

.field public static final SOCIAL_ERROR_CODE:I = -0x1

.field public static final SOCIAL_FAILED_INITIALIZE:I = -0x30d49

.field public static final SOCIAL_INVALID_APP_KEY:I = -0x30d40

.field public static final SOCIAL_INVALID_CALLBACK:I = -0x30d41

.field public static final SOCIAL_INVALID_FILE:I = -0x30d48

.field public static final SOCIAL_INVALID_FILENAME:I = -0x30d44

.field public static final SOCIAL_INVALID_HOST:I = -0x30d43

.field public static final SOCIAL_INVALID_JSON:I = -0x30d4a

.field public static final SOCIAL_INVALID_METHOD_TYPE:I = -0x30d46

.field public static final SOCIAL_INVALID_PARAMS:I = -0x30d45

.field public static final SOCIAL_INVALID_PATH:I = -0x30d42

.field public static final SOCIAL_INVALID_PHOTO:I = -0x30d47


# instance fields
.field private a:I

.field private a:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/exception/ArrownockException;

    const v1, 0xc0

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;I)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "errorCode"    # I

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/arrownock/exception/ArrownockException;->a:I

    iput p2, p0, Lcom/arrownock/exception/ArrownockException;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/arrownock/exception/ArrownockException;->a:I

    iput p2, p0, Lcom/arrownock/exception/ArrownockException;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "innerException"    # Ljava/lang/Exception;
    .param p3, "errorCode"    # I

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/arrownock/exception/ArrownockException;->a:I

    iput-object p2, p0, Lcom/arrownock/exception/ArrownockException;->a:Ljava/lang/Exception;

    iput p3, p0, Lcom/arrownock/exception/ArrownockException;->a:I

    return-void
.end method


# virtual methods
.method public native getErrorCode()I
.end method

.method public native getInnerException()Ljava/lang/Exception;
.end method
