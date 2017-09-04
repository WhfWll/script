.class public abstract Lka;
.super Ljava/lang/Object;


# static fields
.field private static a:Lka;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lka;->a:Lka;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Lka;->a:Lka;

    if-nez v0, :cond_1a

    const-string v0, "java.util.ResourceBundle"

    invoke-static {v0}, Lat;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    :try_start_c
    const-string v0, "kd"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lka;

    sput-object v0, Lka;->a:Lka;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_21

    :cond_1a
    :goto_1a
    sget-object v0, Lka;->a:Lka;

    invoke-virtual {v0, p0}, Lka;->b(I)Ljava/lang/String;

    move-result-object v0

    :goto_20
    return-object v0

    :catch_21
    move-exception v0

    const-string v0, ""

    goto :goto_20

    :cond_25
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.MIDPCatalog"

    invoke-static {v0}, Lat;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :try_start_2d
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.MIDPCatalog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lka;

    sput-object v0, Lka;->a:Lka;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3b} :catch_3c

    goto :goto_1a

    :catch_3c
    move-exception v0

    const-string v0, ""

    goto :goto_20
.end method


# virtual methods
.method protected abstract b(I)Ljava/lang/String;
.end method
