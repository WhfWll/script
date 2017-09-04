.class public final enum Lcn/dbox/core/b$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/dbox/core/b$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/dbox/core/b$g;

.field public static final enum b:Lcn/dbox/core/b$g;

.field public static final enum c:Lcn/dbox/core/b$g;

.field public static final enum d:Lcn/dbox/core/b$g;

.field public static final enum e:Lcn/dbox/core/b$g;

.field public static final enum f:Lcn/dbox/core/b$g;

.field public static final enum g:Lcn/dbox/core/b$g;

.field public static final enum h:Lcn/dbox/core/b$g;

.field private static final synthetic i:[Lcn/dbox/core/b$g;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 225
    new-instance v0, Lcn/dbox/core/b$g;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcn/dbox/core/b$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$g;->a:Lcn/dbox/core/b$g;

    new-instance v0, Lcn/dbox/core/b$g;

    const-string v1, "DL_START"

    invoke-direct {v0, v1, v4}, Lcn/dbox/core/b$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$g;->b:Lcn/dbox/core/b$g;

    new-instance v0, Lcn/dbox/core/b$g;

    const-string v1, "DL_REPEAT"

    invoke-direct {v0, v1, v5}, Lcn/dbox/core/b$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$g;->c:Lcn/dbox/core/b$g;

    new-instance v0, Lcn/dbox/core/b$g;

    const-string v1, "DL_FINISH"

    invoke-direct {v0, v1, v6}, Lcn/dbox/core/b$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$g;->d:Lcn/dbox/core/b$g;

    new-instance v0, Lcn/dbox/core/b$g;

    const-string v1, "DL_FAILED"

    invoke-direct {v0, v1, v7}, Lcn/dbox/core/b$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$g;->e:Lcn/dbox/core/b$g;

    new-instance v0, Lcn/dbox/core/b$g;

    const-string v1, "DL_CANCEL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/dbox/core/b$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$g;->f:Lcn/dbox/core/b$g;

    new-instance v0, Lcn/dbox/core/b$g;

    const-string v1, "INSTALL_SUCCESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcn/dbox/core/b$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$g;->g:Lcn/dbox/core/b$g;

    new-instance v0, Lcn/dbox/core/b$g;

    const-string v1, "AUTO_RUN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcn/dbox/core/b$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$g;->h:Lcn/dbox/core/b$g;

    .line 223
    const/16 v0, 0x8

    new-array v0, v0, [Lcn/dbox/core/b$g;

    sget-object v1, Lcn/dbox/core/b$g;->a:Lcn/dbox/core/b$g;

    aput-object v1, v0, v3

    sget-object v1, Lcn/dbox/core/b$g;->b:Lcn/dbox/core/b$g;

    aput-object v1, v0, v4

    sget-object v1, Lcn/dbox/core/b$g;->c:Lcn/dbox/core/b$g;

    aput-object v1, v0, v5

    sget-object v1, Lcn/dbox/core/b$g;->d:Lcn/dbox/core/b$g;

    aput-object v1, v0, v6

    sget-object v1, Lcn/dbox/core/b$g;->e:Lcn/dbox/core/b$g;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/dbox/core/b$g;->f:Lcn/dbox/core/b$g;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/dbox/core/b$g;->g:Lcn/dbox/core/b$g;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcn/dbox/core/b$g;->h:Lcn/dbox/core/b$g;

    aput-object v2, v0, v1

    sput-object v0, Lcn/dbox/core/b$g;->i:[Lcn/dbox/core/b$g;

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
    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/dbox/core/b$g;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 223
    const-class v0, Lcn/dbox/core/b$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/b$g;

    return-object v0
.end method

.method public static values()[Lcn/dbox/core/b$g;
    .registers 1

    .prologue
    .line 223
    sget-object v0, Lcn/dbox/core/b$g;->i:[Lcn/dbox/core/b$g;

    invoke-virtual {v0}, [Lcn/dbox/core/b$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/dbox/core/b$g;

    return-object v0
.end method
