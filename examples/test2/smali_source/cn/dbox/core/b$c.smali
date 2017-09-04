.class public final enum Lcn/dbox/core/b$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/dbox/core/b$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/dbox/core/b$c;

.field public static final enum b:Lcn/dbox/core/b$c;

.field private static final synthetic c:[Lcn/dbox/core/b$c;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 215
    new-instance v0, Lcn/dbox/core/b$c;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcn/dbox/core/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$c;->a:Lcn/dbox/core/b$c;

    new-instance v0, Lcn/dbox/core/b$c;

    const-string v1, "CHANNEL_ENTRY_CLK"

    invoke-direct {v0, v1, v3}, Lcn/dbox/core/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dbox/core/b$c;->b:Lcn/dbox/core/b$c;

    .line 214
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/dbox/core/b$c;

    sget-object v1, Lcn/dbox/core/b$c;->a:Lcn/dbox/core/b$c;

    aput-object v1, v0, v2

    sget-object v1, Lcn/dbox/core/b$c;->b:Lcn/dbox/core/b$c;

    aput-object v1, v0, v3

    sput-object v0, Lcn/dbox/core/b$c;->c:[Lcn/dbox/core/b$c;

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
    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/dbox/core/b$c;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 214
    const-class v0, Lcn/dbox/core/b$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/b$c;

    return-object v0
.end method

.method public static values()[Lcn/dbox/core/b$c;
    .registers 1

    .prologue
    .line 214
    sget-object v0, Lcn/dbox/core/b$c;->c:[Lcn/dbox/core/b$c;

    invoke-virtual {v0}, [Lcn/dbox/core/b$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/dbox/core/b$c;

    return-object v0
.end method
