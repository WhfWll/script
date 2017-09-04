.class Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$1;
.super Ljava/lang/Object;
.source "WLDroidGap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->handleNotEnoughSpace(Ljava/lang/Long;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;

.field final synthetic val$decimalFormat:Ljava/text/DecimalFormat;

.field final synthetic val$spaceNeeded:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$1;

    const v1, 0x43c

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;Ljava/text/DecimalFormat;Ljava/lang/Long;)V
    .registers 4

    .prologue
    .line 618
    iput-object p1, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$1;->this$1:Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;

    iput-object p2, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$1;->val$decimalFormat:Ljava/text/DecimalFormat;

    iput-object p3, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$1;->val$spaceNeeded:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
