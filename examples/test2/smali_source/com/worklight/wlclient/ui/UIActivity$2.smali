.class Lcom/worklight/wlclient/ui/UIActivity$2;
.super Ljava/lang/Object;
.source "UIActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/wlclient/ui/UIActivity;->handleNotifyDialogue(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/wlclient/ui/UIActivity;

.field final synthetic val$messageId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/ui/UIActivity$2;

    const v1, 0x4eb

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/wlclient/ui/UIActivity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 148
    iput-object p1, p0, Lcom/worklight/wlclient/ui/UIActivity$2;->this$0:Lcom/worklight/wlclient/ui/UIActivity;

    iput-object p2, p0, Lcom/worklight/wlclient/ui/UIActivity$2;->val$messageId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onClick(Landroid/content/DialogInterface;I)V
.end method
