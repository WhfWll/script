.class Lcom/worklight/wlclient/ui/UIActivity$3;
.super Ljava/lang/Object;
.source "UIActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/wlclient/ui/UIActivity;->handleRemoteDisableDialogue(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/wlclient/ui/UIActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/ui/UIActivity$3;

    const v1, 0x4ec

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/wlclient/ui/UIActivity;)V
    .registers 2

    .prologue
    .line 185
    iput-object p1, p0, Lcom/worklight/wlclient/ui/UIActivity$3;->this$0:Lcom/worklight/wlclient/ui/UIActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onClick(Landroid/content/DialogInterface;I)V
.end method
