.class Lcom/worklight/common/WLPreferences$2$1;
.super Ljava/lang/Object;
.source "WLPreferences.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/common/WLPreferences$2;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/worklight/common/WLPreferences$2;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/common/WLPreferences$2$1;

    const v1, 0x4af

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/common/WLPreferences$2;)V
    .registers 2

    .prologue
    .line 247
    iput-object p1, p0, Lcom/worklight/common/WLPreferences$2$1;->this$1:Lcom/worklight/common/WLPreferences$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onClick(Landroid/content/DialogInterface;I)V
.end method
