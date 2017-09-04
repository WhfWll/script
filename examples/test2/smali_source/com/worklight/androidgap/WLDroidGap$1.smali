.class Lcom/worklight/androidgap/WLDroidGap$1;
.super Ljava/lang/Object;
.source "WLDroidGap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/WLDroidGap;->testResourcesChecksum()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/WLDroidGap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/WLDroidGap$1;

    const v1, 0x43a

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/androidgap/WLDroidGap;)V
    .registers 2

    .prologue
    .line 163
    iput-object p1, p0, Lcom/worklight/androidgap/WLDroidGap$1;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
