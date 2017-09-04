.class Lcom/worklight/common/WLPreferences$2;
.super Ljava/lang/Object;
.source "WLPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/common/WLPreferences;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/common/WLPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/common/WLPreferences$2;

    const v1, 0x4b0

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/common/WLPreferences;)V
    .registers 2

    .prologue
    .line 225
    iput-object p1, p0, Lcom/worklight/common/WLPreferences$2;->this$0:Lcom/worklight/common/WLPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end method
