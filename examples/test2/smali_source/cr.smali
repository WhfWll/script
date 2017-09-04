.class final enum Lcr;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcr;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcr;

.field private static enum b:Lcr;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcr;

    const-string v1, "MD5"

    invoke-direct {v0, v1, v2}, Lcr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcr;->b:Lcr;

    new-instance v0, Lcr;

    const-string v1, "SHA1"

    invoke-direct {v0, v1, v3}, Lcr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcr;->a:Lcr;

    const/4 v0, 0x2

    new-array v0, v0, [Lcr;

    sget-object v1, Lcr;->b:Lcr;

    aput-object v1, v0, v2

    sget-object v1, Lcr;->a:Lcr;

    aput-object v1, v0, v3

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
