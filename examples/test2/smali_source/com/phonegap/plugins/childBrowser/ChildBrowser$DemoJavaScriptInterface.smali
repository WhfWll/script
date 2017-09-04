.class final Lcom/phonegap/plugins/childBrowser/ChildBrowser$DemoJavaScriptInterface;
.super Ljava/lang/Object;
.source "ChildBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonegap/plugins/childBrowser/ChildBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DemoJavaScriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$DemoJavaScriptInterface;

    const v1, 0x3da

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)V
    .registers 2

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$DemoJavaScriptInterface;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1145
    return-void
.end method


# virtual methods
.method public native isInstallCashier(Ljava/lang/String;)Ljava/lang/String;
.end method
