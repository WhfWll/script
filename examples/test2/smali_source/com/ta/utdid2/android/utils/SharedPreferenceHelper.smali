.class public Lcom/ta/utdid2/android/utils/SharedPreferenceHelper;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/ta/utdid2/android/utils/SharedPreferenceHelper;

    const v1, 0x3eb

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native apply(Landroid/content/SharedPreferences$Editor;)V
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation
.end method
