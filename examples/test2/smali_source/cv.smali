.class final enum Lcv;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcv;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcv;

.field public static final enum b:Lcv;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcv;

    const-string v1, "RENDERER_YUV"

    invoke-direct {v0, v1, v2}, Lcv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcv;->a:Lcv;

    new-instance v0, Lcv;

    const-string v1, "RENDERER_TEXTURE"

    invoke-direct {v0, v1, v3}, Lcv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcv;->b:Lcv;

    const/4 v0, 0x2

    new-array v0, v0, [Lcv;

    sget-object v1, Lcv;->a:Lcv;

    aput-object v1, v0, v2

    sget-object v1, Lcv;->b:Lcv;

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
