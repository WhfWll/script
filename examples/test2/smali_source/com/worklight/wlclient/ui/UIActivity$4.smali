.class Lcom/worklight/wlclient/ui/UIActivity$4;
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

.field final synthetic val$downloadLink:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/ui/UIActivity$4;

    const v1, 0x4ed

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/wlclient/ui/UIActivity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 203
    iput-object p1, p0, Lcom/worklight/wlclient/ui/UIActivity$4;->this$0:Lcom/worklight/wlclient/ui/UIActivity;

    iput-object p2, p0, Lcom/worklight/wlclient/ui/UIActivity$4;->val$downloadLink:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onClick(Landroid/content/DialogInterface;I)V
.end method
