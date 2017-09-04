.class Lcom/bontai/mobiads/ads/AppHelp$1;
.super Ljava/lang/Object;
.source "AppHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bontai/mobiads/ads/AppHelp;->installDialogInfo(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$filename:Ljava/lang/String;

.field private final synthetic val$saveLocation:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/AppHelp$1;

    const v1, 0xe0

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bontai/mobiads/ads/AppHelp$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/bontai/mobiads/ads/AppHelp$1;->val$saveLocation:Ljava/io/File;

    iput-object p3, p0, Lcom/bontai/mobiads/ads/AppHelp$1;->val$filename:Ljava/lang/String;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onClick(Landroid/content/DialogInterface;I)V
.end method
