.class public final enum Lss/ss/ss/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lss/ss/ss/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lss/ss/ss/a;

.field public static final enum b:Lss/ss/ss/a;

.field public static final enum c:Lss/ss/ss/a;

.field public static final enum d:Lss/ss/ss/a;

.field public static final enum e:Lss/ss/ss/a;

.field public static final enum f:Lss/ss/ss/a;

.field public static final enum g:Lss/ss/ss/a;

.field public static final enum h:Lss/ss/ss/a;

.field public static final enum i:Lss/ss/ss/a;

.field public static final enum j:Lss/ss/ss/a;

.field public static final enum k:Lss/ss/ss/a;

.field public static final enum l:Lss/ss/ss/a;

.field public static final enum m:Lss/ss/ss/a;

.field public static final enum n:Lss/ss/ss/a;

.field public static final enum o:Lss/ss/ss/a;

.field public static final enum p:Lss/ss/ss/a;

.field public static final enum q:Lss/ss/ss/a;

.field public static final enum r:Lss/ss/ss/a;

.field private static final synthetic v:[Lss/ss/ss/a;


# instance fields
.field public final s:I

.field public final t:I

.field public final u:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    const/4 v15, 0x3

    const/4 v2, 0x0

    const/4 v14, 0x2

    const/4 v7, 0x1

    const/4 v4, -0x1

    new-instance v0, Lss/ss/ss/a;

    const-string v1, "NO_ERROR"

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lss/ss/ss/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lss/ss/ss/a;->a:Lss/ss/ss/a;

    new-instance v5, Lss/ss/ss/a;

    const-string v6, "PROTOCOL_ERROR"

    move v8, v7

    move v9, v7

    move v10, v7

    invoke-direct/range {v5 .. v10}, Lss/ss/ss/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Lss/ss/ss/a;->b:Lss/ss/ss/a;

    new-instance v8, Lss/ss/ss/a;

    const-string v9, "INVALID_STREAM"

    move v10, v14

    move v11, v7

    move v12, v14

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lss/ss/ss/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lss/ss/ss/a;->c:Lss/ss/ss/a;

    new-instance v8, Lss/ss/ss/a;

    const-string v9, "UNSUPPORTED_VERSION"

    const/4 v12, 0x4

    move v10, v15

    move v11, v7

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lss/ss/ss/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lss/ss/ss/a;->d:Lss/ss/ss/a;

    new-instance v8, Lss/ss/ss/a;

    const-string v9, "STREAM_IN_USE"

    const/4 v10, 0x4

    const/16 v12, 0x8

    move v11, v7

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lss/ss/ss/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lss/ss/ss/a;->e:Lss/ss/ss/a;

    new-instance v8, Lss/ss/ss/a;

    const-string v9, "STREAM_ALREADY_CLOSED"

    const/4 v10, 0x5

    const/16 v12, 0x9

    move v11, v7

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lss/ss/ss/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lss/ss/ss/a;->f:Lss/ss/ss/a;

    new-instance v8, Lss/ss/ss/a;

    const-string v9, "INTERNAL_ERROR"

    const/4 v10, 0x6

    const/4 v12, 0x6

    move v11, v14

    move v13, v14

    invoke-direct/range {v8 .. v13}, Lss/ss/ss/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lss/ss/ss/a;->g:Lss/ss/ss/a;

    new-instance v8, Lss/ss/ss/a;

    const-string v9, "FLOW_CONTROL_ERROR"

    const/4 v10, 0x7

    const/4 v12, 0x7

    move v11, v15

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lss/ss/ss/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lss/ss/ss/a;->h:Lss/ss/ss/a;

    new-instance v8, Lss/ss/ss/a;

    const-string v9, "STREAM_CLOSED"

    const/16 v10, 0x8

    const/4 v11, 0x5

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lss/ss/ss/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lss/ss/ss/a;->i:Lss/ss/ss/a;

    new-instance v8, Lss/ss/ss/a;

    const-string v9, "FRAME_TOO_LARGE"

    const/16 v10, 0x9

    const/4 v11, 0x6

    const/16 v12, 0xb

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lss/ss/ss/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lss/ss/ss/a;->j:Lss/ss/ss/a;

    new-instance v8, Lss/ss/ss/a;

    const-string v9, "REFUSED_STREAM"

    const/16 v10, 0xa

    const/4 v11, 0x7

    move v12, v15

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lss/ss/ss/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lss/ss/ss/a;->k:Lss/ss/ss/a;

    new-instance v8, Lss/ss/ss/a;

    const-string v9, "CANCEL"

    const/16 v10, 0xb

    const/16 v11, 0x8

    const/4 v12, 0x5

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lss/ss/ss/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lss/ss/ss/a;->l:Lss/ss/ss/a;

    new-instance v8, Lss/ss/ss/a;

    const-string v9, "COMPRESSION_ERROR"

    const/16 v10, 0xc

    const/16 v11, 0x9

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lss/ss/ss/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lss/ss/ss/a;->m:Lss/ss/ss/a;

    new-instance v8, Lss/ss/ss/a;

    const-string v9, "CONNECT_ERROR"

    const/16 v10, 0xd

    const/16 v11, 0xa

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lss/ss/ss/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lss/ss/ss/a;->n:Lss/ss/ss/a;

    new-instance v8, Lss/ss/ss/a;

    const-string v9, "ENHANCE_YOUR_CALM"

    const/16 v10, 0xe

    const/16 v11, 0xb

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lss/ss/ss/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lss/ss/ss/a;->o:Lss/ss/ss/a;

    new-instance v8, Lss/ss/ss/a;

    const-string v9, "INADEQUATE_SECURITY"

    const/16 v10, 0xf

    const/16 v11, 0xc

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lss/ss/ss/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lss/ss/ss/a;->p:Lss/ss/ss/a;

    new-instance v8, Lss/ss/ss/a;

    const-string v9, "HTTP_1_1_REQUIRED"

    const/16 v10, 0x10

    const/16 v11, 0xd

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lss/ss/ss/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lss/ss/ss/a;->q:Lss/ss/ss/a;

    new-instance v8, Lss/ss/ss/a;

    const-string v9, "INVALID_CREDENTIALS"

    const/16 v10, 0x11

    const/16 v12, 0xa

    move v11, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lss/ss/ss/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lss/ss/ss/a;->r:Lss/ss/ss/a;

    const/16 v0, 0x12

    new-array v0, v0, [Lss/ss/ss/a;

    sget-object v1, Lss/ss/ss/a;->a:Lss/ss/ss/a;

    aput-object v1, v0, v2

    sget-object v1, Lss/ss/ss/a;->b:Lss/ss/ss/a;

    aput-object v1, v0, v7

    sget-object v1, Lss/ss/ss/a;->c:Lss/ss/ss/a;

    aput-object v1, v0, v14

    sget-object v1, Lss/ss/ss/a;->d:Lss/ss/ss/a;

    aput-object v1, v0, v15

    const/4 v1, 0x4

    sget-object v2, Lss/ss/ss/a;->e:Lss/ss/ss/a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lss/ss/ss/a;->f:Lss/ss/ss/a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lss/ss/ss/a;->g:Lss/ss/ss/a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lss/ss/ss/a;->h:Lss/ss/ss/a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lss/ss/ss/a;->i:Lss/ss/ss/a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lss/ss/ss/a;->j:Lss/ss/ss/a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lss/ss/ss/a;->k:Lss/ss/ss/a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lss/ss/ss/a;->l:Lss/ss/ss/a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lss/ss/ss/a;->m:Lss/ss/ss/a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lss/ss/ss/a;->n:Lss/ss/ss/a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lss/ss/ss/a;->o:Lss/ss/ss/a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lss/ss/ss/a;->p:Lss/ss/ss/a;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lss/ss/ss/a;->q:Lss/ss/ss/a;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lss/ss/ss/a;->r:Lss/ss/ss/a;

    aput-object v2, v0, v1

    sput-object v0, Lss/ss/ss/a;->v:[Lss/ss/ss/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lss/ss/ss/a;->s:I

    iput p4, p0, Lss/ss/ss/a;->t:I

    iput p5, p0, Lss/ss/ss/a;->u:I

    return-void
.end method

.method public static a(I)Lss/ss/ss/a;
    .registers 6

    invoke-static {}, Lss/ss/ss/a;->values()[Lss/ss/ss/a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    iget v4, v0, Lss/ss/ss/a;->t:I

    if-ne v4, p0, :cond_10

    :goto_f
    return-object v0

    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static b(I)Lss/ss/ss/a;
    .registers 6

    invoke-static {}, Lss/ss/ss/a;->values()[Lss/ss/ss/a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    iget v4, v0, Lss/ss/ss/a;->s:I

    if-ne v4, p0, :cond_10

    :goto_f
    return-object v0

    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static c(I)Lss/ss/ss/a;
    .registers 6

    invoke-static {}, Lss/ss/ss/a;->values()[Lss/ss/ss/a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    iget v4, v0, Lss/ss/ss/a;->u:I

    if-ne v4, p0, :cond_10

    :goto_f
    return-object v0

    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static valueOf(Ljava/lang/String;)Lss/ss/ss/a;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lss/ss/ss/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lss/ss/ss/a;

    return-object v0
.end method

.method public static values()[Lss/ss/ss/a;
    .registers 1

    sget-object v0, Lss/ss/ss/a;->v:[Lss/ss/ss/a;

    invoke-virtual {v0}, [Lss/ss/ss/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lss/ss/ss/a;

    return-object v0
.end method
