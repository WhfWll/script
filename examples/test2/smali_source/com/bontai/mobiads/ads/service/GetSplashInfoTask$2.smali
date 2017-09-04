.class Lcom/bontai/mobiads/ads/service/GetSplashInfoTask$2;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;
.source "GetSplashInfoTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bontai/mobiads/ads/service/GetSplashInfoTask;->downloadPic(Lcom/bontai/mobiads/ads/entity/AdDomain;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lidroid/xutils/http/callback/RequestCallBack",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bontai/mobiads/ads/service/GetSplashInfoTask;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$item:Lcom/bontai/mobiads/ads/entity/AdDomain;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/service/GetSplashInfoTask$2;

    const v1, 0xfb

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/bontai/mobiads/ads/service/GetSplashInfoTask;Landroid/content/Context;Lcom/bontai/mobiads/ads/entity/AdDomain;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bontai/mobiads/ads/service/GetSplashInfoTask$2;->this$0:Lcom/bontai/mobiads/ads/service/GetSplashInfoTask;

    iput-object p2, p0, Lcom/bontai/mobiads/ads/service/GetSplashInfoTask$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/bontai/mobiads/ads/service/GetSplashInfoTask$2;->val$item:Lcom/bontai/mobiads/ads/entity/AdDomain;

    .line 327
    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public native onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
.end method

.method public native onLoading(JJZ)V
.end method

.method public native onStart()V
.end method

.method public native onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/ResponseInfo",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation
.end method
