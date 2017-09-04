.class Lcom/phonegap/plugins/childBrowser/ChildBrowser$8;
.super Ljava/lang/Object;
.source "ChildBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/plugins/childBrowser/ChildBrowser;->sendTicketInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$8;

    const v1, 0x3d5

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$8;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    iput-object p2, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$8;->val$url:Ljava/lang/String;

    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
