.class public final enum Lcw;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcw;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcw;

.field public static final enum b:Lcw;

.field public static final enum c:Lcw;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcw;

    const-string v1, "SCALE_ASPECT_FIT"

    invoke-direct {v0, v1, v2}, Lcw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcw;->a:Lcw;

    new-instance v0, Lcw;

    const-string v1, "SCALE_ASPECT_FILL"

    invoke-direct {v0, v1, v3}, Lcw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcw;->b:Lcw;

    new-instance v0, Lcw;

    const-string v1, "SCALE_FILL"

    invoke-direct {v0, v1, v4}, Lcw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcw;->c:Lcw;

    const/4 v0, 0x3

    new-array v0, v0, [Lcw;

    sget-object v1, Lcw;->a:Lcw;

    aput-object v1, v0, v2

    sget-object v1, Lcw;->b:Lcw;

    aput-object v1, v0, v3

    sget-object v1, Lcw;->c:Lcw;

    aput-object v1, v0, v4

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
