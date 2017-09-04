.class public final enum Lea;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lea;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lea;

.field public static final enum b:Lea;

.field public static final enum c:Lea;

.field public static final enum d:Lea;

.field public static final enum e:Lea;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lea;

    const-string v1, "Disconnect"

    invoke-direct {v0, v1, v2}, Lea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lea;->a:Lea;

    new-instance v0, Lea;

    const-string v1, "Disconnecting"

    invoke-direct {v0, v1, v3}, Lea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lea;->b:Lea;

    new-instance v0, Lea;

    const-string v1, "Connecting"

    invoke-direct {v0, v1, v4}, Lea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lea;->c:Lea;

    new-instance v0, Lea;

    const-string v1, "Connected"

    invoke-direct {v0, v1, v5}, Lea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lea;->d:Lea;

    new-instance v0, Lea;

    const-string v1, "Problematic"

    invoke-direct {v0, v1, v6}, Lea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lea;->e:Lea;

    const/4 v0, 0x5

    new-array v0, v0, [Lea;

    sget-object v1, Lea;->a:Lea;

    aput-object v1, v0, v2

    sget-object v1, Lea;->b:Lea;

    aput-object v1, v0, v3

    sget-object v1, Lea;->c:Lea;

    aput-object v1, v0, v4

    sget-object v1, Lea;->d:Lea;

    aput-object v1, v0, v5

    sget-object v1, Lea;->e:Lea;

    aput-object v1, v0, v6

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
