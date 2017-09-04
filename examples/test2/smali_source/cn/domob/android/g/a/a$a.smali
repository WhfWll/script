.class public final enum Lcn/domob/android/g/a/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/g/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/android/g/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/domob/android/g/a/a$a;

.field public static final enum b:Lcn/domob/android/g/a/a$a;

.field private static final synthetic c:[Lcn/domob/android/g/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcn/domob/android/g/a/a$a;

    const-string v1, "ERROR_NO_NETWORK"

    invoke-direct {v0, v1, v2}, Lcn/domob/android/g/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/g/a/a$a;->a:Lcn/domob/android/g/a/a$a;

    new-instance v0, Lcn/domob/android/g/a/a$a;

    const-string v1, "ERROR_ALL_DOMAIN_FAILED"

    invoke-direct {v0, v1, v3}, Lcn/domob/android/g/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/g/a/a$a;->b:Lcn/domob/android/g/a/a$a;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/domob/android/g/a/a$a;

    sget-object v1, Lcn/domob/android/g/a/a$a;->a:Lcn/domob/android/g/a/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcn/domob/android/g/a/a$a;->b:Lcn/domob/android/g/a/a$a;

    aput-object v1, v0, v3

    sput-object v0, Lcn/domob/android/g/a/a$a;->c:[Lcn/domob/android/g/a/a$a;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/android/g/a/a$a;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcn/domob/android/g/a/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/android/g/a/a$a;

    return-object v0
.end method

.method public static values()[Lcn/domob/android/g/a/a$a;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcn/domob/android/g/a/a$a;->c:[Lcn/domob/android/g/a/a$a;

    invoke-virtual {v0}, [Lcn/domob/android/g/a/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/android/g/a/a$a;

    return-object v0
.end method
