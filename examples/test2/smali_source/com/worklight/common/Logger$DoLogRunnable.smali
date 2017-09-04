.class Lcom/worklight/common/Logger$DoLogRunnable;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/common/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoLogRunnable"
.end annotation


# instance fields
.field private additionalMetadata:Lorg/json/JSONObject;

.field private calledLevel:Lcom/worklight/common/Logger$LEVEL;

.field private logger:Lcom/worklight/common/Logger;

.field private message:Ljava/lang/String;

.field private t:Ljava/lang/Throwable;

.field private timestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/common/Logger$DoLogRunnable;

    const v1, 0x4a6

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/worklight/common/Logger$LEVEL;Ljava/lang/String;JLorg/json/JSONObject;Ljava/lang/Throwable;Lcom/worklight/common/Logger;)V
    .registers 9
    .param p1, "_calledLevel"    # Lcom/worklight/common/Logger$LEVEL;
    .param p2, "_message"    # Ljava/lang/String;
    .param p3, "_timestamp"    # J
    .param p5, "_additionalMetadata"    # Lorg/json/JSONObject;
    .param p6, "_t"    # Ljava/lang/Throwable;
    .param p7, "_logger"    # Lcom/worklight/common/Logger;

    .prologue
    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 977
    iput-object p1, p0, Lcom/worklight/common/Logger$DoLogRunnable;->calledLevel:Lcom/worklight/common/Logger$LEVEL;

    .line 978
    iput-object p2, p0, Lcom/worklight/common/Logger$DoLogRunnable;->message:Ljava/lang/String;

    .line 979
    iput-wide p3, p0, Lcom/worklight/common/Logger$DoLogRunnable;->timestamp:J

    .line 980
    iput-object p5, p0, Lcom/worklight/common/Logger$DoLogRunnable;->additionalMetadata:Lorg/json/JSONObject;

    .line 981
    iput-object p6, p0, Lcom/worklight/common/Logger$DoLogRunnable;->t:Ljava/lang/Throwable;

    .line 982
    iput-object p7, p0, Lcom/worklight/common/Logger$DoLogRunnable;->logger:Lcom/worklight/common/Logger;

    .line 983
    return-void
.end method


# virtual methods
.method public native run()V
.end method
