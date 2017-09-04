.class Lcom/ta/utdid2/aid/AidRequester$PostRestThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/aid/AidRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostRestThread"
.end annotation


# instance fields
.field mAppName:Ljava/lang/String;

.field mCallback:Lcom/ut/device/a;

.field mOldAid:Ljava/lang/String;

.field mPost:Lorg/apache/http/client/methods/HttpPost;

.field mRspLine:Ljava/lang/String;

.field mToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/ta/utdid2/aid/AidRequester;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;

    const v1, 0x3df

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/ta/utdid2/aid/AidRequester;Lorg/apache/http/client/methods/HttpPost;)V
    .registers 4

    iput-object p1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->this$0:Lcom/ta/utdid2/aid/AidRequester;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mRspLine:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mPost:Lorg/apache/http/client/methods/HttpPost;

    return-void
.end method

.method public constructor <init>(Lcom/ta/utdid2/aid/AidRequester;Lorg/apache/http/client/methods/HttpPost;Lcom/ut/device/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    iput-object p1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->this$0:Lcom/ta/utdid2/aid/AidRequester;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mRspLine:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mPost:Lorg/apache/http/client/methods/HttpPost;

    iput-object p3, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/a;

    iput-object p4, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mOldAid:Ljava/lang/String;

    iput-object p5, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mAppName:Ljava/lang/String;

    iput-object p6, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public native getResponseLine()Ljava/lang/String;
.end method

.method public native run()V
.end method
