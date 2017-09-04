.class public Lkd;
.super Lka;


# instance fields
.field private a:Ljava/util/ResourceBundle;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    invoke-direct {p0}, Lka;-><init>()V

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.messages"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lkd;->a:Ljava/util/ResourceBundle;

    return-void
.end method


# virtual methods
.method protected final b(I)Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lkd;->a:Ljava/util/ResourceBundle;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const-string v0, "MqttException"

    goto :goto_a
.end method
