.class Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;
.super Ljava/lang/Object;
.source "ChildBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/plugins/childBrowser/ChildBrowser;->openDialog(Lorg/json/JSONObject;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

.field private final synthetic val$buttonText:Ljava/lang/String;

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;

    const v1, 0x3c7

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    iput-object p2, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->val$buttonText:Ljava/lang/String;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
