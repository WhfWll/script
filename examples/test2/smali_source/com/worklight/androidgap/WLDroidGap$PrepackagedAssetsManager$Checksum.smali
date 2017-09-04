.class Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$Checksum;
.super Ljava/lang/Object;
.source "WLDroidGap.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Checksum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$Checksum;",
        ">;"
    }
.end annotation


# instance fields
.field private checksum:Ljava/lang/String;

.field private date:Ljava/lang/Long;

.field private machine:Ljava/lang/String;

.field final synthetic this$1:Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$Checksum;

    const v1, 0x43d

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;Lorg/json/JSONObject;)V
    .registers 5
    .param p2, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 642
    iput-object p1, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$Checksum;->this$1:Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    const-string v0, "checksum"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$Checksum;->checksum:Ljava/lang/String;

    .line 645
    const-string v0, "date"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$Checksum;->date:Ljava/lang/Long;

    .line 646
    const-string v0, "machine"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$Checksum;->machine:Ljava/lang/String;

    .line 647
    return-void
.end method


# virtual methods
.method public native compareTo(Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$Checksum;)I
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 637
    check-cast p1, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$Checksum;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$Checksum;->compareTo(Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$Checksum;)I

    move-result v0

    return v0
.end method

.method public native getChecksum()Ljava/lang/String;
.end method

.method public native getDate()Ljava/lang/Long;
.end method

.method public native getMachine()Ljava/lang/String;
.end method
