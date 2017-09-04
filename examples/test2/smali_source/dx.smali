.class final enum Ldx;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldx;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldx;

.field public static final enum b:Ldx;

.field public static final enum c:Ldx;

.field public static final enum d:Ldx;

.field private static enum e:Ldx;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ldx;

    const-string v1, "placeholder"

    invoke-direct {v0, v1, v2}, Ldx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldx;->e:Ldx;

    new-instance v0, Ldx;

    const-string v1, "imei"

    invoke-direct {v0, v1, v3}, Ldx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldx;->a:Ldx;

    new-instance v0, Ldx;

    const-string v1, "android_id"

    invoke-direct {v0, v1, v4}, Ldx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldx;->b:Ldx;

    new-instance v0, Ldx;

    const-string v1, "none"

    invoke-direct {v0, v1, v5}, Ldx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldx;->c:Ldx;

    new-instance v0, Ldx;

    const-string v1, "a"

    invoke-direct {v0, v1, v6}, Ldx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldx;->d:Ldx;

    const/4 v0, 0x5

    new-array v0, v0, [Ldx;

    sget-object v1, Ldx;->e:Ldx;

    aput-object v1, v0, v2

    sget-object v1, Ldx;->a:Ldx;

    aput-object v1, v0, v3

    sget-object v1, Ldx;->b:Ldx;

    aput-object v1, v0, v4

    sget-object v1, Ldx;->c:Ldx;

    aput-object v1, v0, v5

    sget-object v1, Ldx;->d:Ldx;

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
