.class Lcom/phonegap/plugins/childBrowser/ChildBrowser$MyWebViewDownLoadListener;
.super Ljava/lang/Object;
.source "ChildBrowser.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonegap/plugins/childBrowser/ChildBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewDownLoadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$MyWebViewDownLoadListener;

    const v1, 0x3dc

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)V
    .registers 2

    .prologue
    .line 962
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$MyWebViewDownLoadListener;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Lcom/phonegap/plugins/childBrowser/ChildBrowser$MyWebViewDownLoadListener;)V
    .registers 3

    .prologue
    .line 962
    invoke-direct {p0, p1}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$MyWebViewDownLoadListener;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)V

    return-void
.end method


# virtual methods
.method public native onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method
