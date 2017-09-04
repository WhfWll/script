.class Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;
.super Ljava/lang/Object;
.source "WifiPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/WifiPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiConnection"
.end annotation


# instance fields
.field private MAC:Ljava/lang/String;

.field private SSID:Ljava/lang/String;

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/WifiPlugin;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;

    const v1, 0x47c

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/worklight/androidgap/plugin/WifiPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2, "sSID"    # Ljava/lang/String;
    .param p3, "mAC"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 64
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;->this$0:Lcom/worklight/androidgap/plugin/WifiPlugin;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;->SSID:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;->MAC:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;->SSID:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;->MAC:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public native getMAC()Ljava/lang/String;
.end method

.method public native getSSID()Ljava/lang/String;
.end method
