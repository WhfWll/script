.class public final Lcom/alipay/sdk/exception/NetErrorException;
.super Ljava/lang/Exception;


# static fields
.field public static final NET_CONNECTION_ERROR:I = 0x0

.field public static final SERVER_ERROR:I = 0x1

.field public static final SSL_ERROR:I = 0x2

.field private static final serialVersionUID:J = 0x743720ff0041e99bL


# instance fields
.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/exception/NetErrorException;

    const v1, 0x9d

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/alipay/sdk/exception/NetErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/sdk/exception/NetErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/sdk/exception/NetErrorException;->errorCode:I

    invoke-static {p1, p2}, Lcom/alipay/sdk/exception/NetErrorException;->printException(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alipay/sdk/exception/NetErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static native printException(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method


# virtual methods
.method public final native getErrorCode()I
.end method

.method public final native setErrorCode(I)V
.end method
