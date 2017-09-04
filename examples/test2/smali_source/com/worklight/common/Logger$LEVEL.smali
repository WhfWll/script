.class public abstract enum Lcom/worklight/common/Logger$LEVEL;
.super Ljava/lang/Enum;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/common/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "LEVEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/worklight/common/Logger$LEVEL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/worklight/common/Logger$LEVEL;

.field public static final enum DEBUG:Lcom/worklight/common/Logger$LEVEL;

.field public static final enum ERROR:Lcom/worklight/common/Logger$LEVEL;

.field public static final enum INFO:Lcom/worklight/common/Logger$LEVEL;

.field public static final enum LOG:Lcom/worklight/common/Logger$LEVEL;

.field public static final enum WARN:Lcom/worklight/common/Logger$LEVEL;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 188
    new-instance v0, Lcom/worklight/common/Logger$LEVEL$1;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v2}, Lcom/worklight/common/Logger$LEVEL$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/common/Logger$LEVEL;->ERROR:Lcom/worklight/common/Logger$LEVEL;

    .line 189
    new-instance v0, Lcom/worklight/common/Logger$LEVEL$2;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v3}, Lcom/worklight/common/Logger$LEVEL$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/common/Logger$LEVEL;->WARN:Lcom/worklight/common/Logger$LEVEL;

    .line 190
    new-instance v0, Lcom/worklight/common/Logger$LEVEL$3;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v4}, Lcom/worklight/common/Logger$LEVEL$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/common/Logger$LEVEL;->INFO:Lcom/worklight/common/Logger$LEVEL;

    .line 191
    new-instance v0, Lcom/worklight/common/Logger$LEVEL$4;

    const-string v1, "LOG"

    invoke-direct {v0, v1, v5}, Lcom/worklight/common/Logger$LEVEL$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/common/Logger$LEVEL;->LOG:Lcom/worklight/common/Logger$LEVEL;

    .line 192
    new-instance v0, Lcom/worklight/common/Logger$LEVEL$5;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v6}, Lcom/worklight/common/Logger$LEVEL$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/common/Logger$LEVEL;->DEBUG:Lcom/worklight/common/Logger$LEVEL;

    .line 187
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/worklight/common/Logger$LEVEL;

    sget-object v1, Lcom/worklight/common/Logger$LEVEL;->ERROR:Lcom/worklight/common/Logger$LEVEL;

    aput-object v1, v0, v2

    sget-object v1, Lcom/worklight/common/Logger$LEVEL;->WARN:Lcom/worklight/common/Logger$LEVEL;

    aput-object v1, v0, v3

    sget-object v1, Lcom/worklight/common/Logger$LEVEL;->INFO:Lcom/worklight/common/Logger$LEVEL;

    aput-object v1, v0, v4

    sget-object v1, Lcom/worklight/common/Logger$LEVEL;->LOG:Lcom/worklight/common/Logger$LEVEL;

    aput-object v1, v0, v5

    sget-object v1, Lcom/worklight/common/Logger$LEVEL;->DEBUG:Lcom/worklight/common/Logger$LEVEL;

    aput-object v1, v0, v6

    sput-object v0, Lcom/worklight/common/Logger$LEVEL;->$VALUES:[Lcom/worklight/common/Logger$LEVEL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/worklight/common/Logger$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/worklight/common/Logger$1;

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lcom/worklight/common/Logger$LEVEL;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/worklight/common/Logger$LEVEL;
    .registers 3
    .param p0, "level"    # Ljava/lang/String;

    .prologue
    .line 210
    :try_start_0
    invoke-static {p0}, Lcom/worklight/common/Logger$LEVEL;->valueOf(Ljava/lang/String;)Lcom/worklight/common/Logger$LEVEL;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 212
    :goto_4
    return-object v1

    .line 211
    :catch_5
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/worklight/common/Logger$LEVEL;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 187
    const-class v0, Lcom/worklight/common/Logger$LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/worklight/common/Logger$LEVEL;

    return-object v0
.end method

.method public static values()[Lcom/worklight/common/Logger$LEVEL;
    .registers 1

    .prologue
    .line 187
    sget-object v0, Lcom/worklight/common/Logger$LEVEL;->$VALUES:[Lcom/worklight/common/Logger$LEVEL;

    invoke-virtual {v0}, [Lcom/worklight/common/Logger$LEVEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/worklight/common/Logger$LEVEL;

    return-object v0
.end method


# virtual methods
.method protected abstract getLevelValue()I
.end method

.method protected isLoggable()Z
    .registers 3

    .prologue
    .line 196
    # getter for: Lcom/worklight/common/Logger;->level:Lcom/worklight/common/Logger$LEVEL;
    invoke-static {}, Lcom/worklight/common/Logger;->access$100()Lcom/worklight/common/Logger$LEVEL;

    move-result-object v0

    if-eqz v0, :cond_16

    # getter for: Lcom/worklight/common/Logger;->level:Lcom/worklight/common/Logger$LEVEL;
    invoke-static {}, Lcom/worklight/common/Logger;->access$100()Lcom/worklight/common/Logger$LEVEL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/worklight/common/Logger$LEVEL;->getLevelValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/worklight/common/Logger$LEVEL;->getLevelValue()I

    move-result v1

    if-lt v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
