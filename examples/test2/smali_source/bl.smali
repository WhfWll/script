.class public final enum Lbl;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbl;

.field public static final enum b:Lbl;

.field public static final enum c:Lbl;

.field public static final enum d:Lbl;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lbl;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v2}, Lbl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbl;->a:Lbl;

    new-instance v0, Lbl;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v3}, Lbl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbl;->b:Lbl;

    new-instance v0, Lbl;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v4}, Lbl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbl;->c:Lbl;

    new-instance v0, Lbl;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lbl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbl;->d:Lbl;

    const/4 v0, 0x4

    new-array v0, v0, [Lbl;

    sget-object v1, Lbl;->a:Lbl;

    aput-object v1, v0, v2

    sget-object v1, Lbl;->b:Lbl;

    aput-object v1, v0, v3

    sget-object v1, Lbl;->c:Lbl;

    aput-object v1, v0, v4

    sget-object v1, Lbl;->d:Lbl;

    aput-object v1, v0, v5

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
