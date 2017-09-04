.class final Lcom/worklight/common/WLUtils$2;
.super Ljava/lang/Object;
.source "WLUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/common/WLUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$buttonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$buttonText:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/common/WLUtils$2;

    const v1, 0x4b6

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 6

    .prologue
    .line 307
    iput-object p1, p0, Lcom/worklight/common/WLUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/worklight/common/WLUtils$2;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/worklight/common/WLUtils$2;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/worklight/common/WLUtils$2;->val$buttonText:Ljava/lang/String;

    iput-object p5, p0, Lcom/worklight/common/WLUtils$2;->val$buttonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
