.class final Lcom/google/common/collect/EmptyImmutableMultiset;
.super Lcom/google/common/collect/ImmutableMultiset;
.source "EmptyImmutableMultiset.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableMultiset",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/collect/EmptyImmutableMultiset;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/EmptyImmutableMultiset;

    const v1, 0x1e6

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    new-instance v0, Lcom/google/common/collect/EmptyImmutableMultiset;

    invoke-direct {v0}, Lcom/google/common/collect/EmptyImmutableMultiset;-><init>()V

    sput-object v0, Lcom/google/common/collect/EmptyImmutableMultiset;->INSTANCE:Lcom/google/common/collect/EmptyImmutableMultiset;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 31
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ImmutableMultiset;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    .line 32
    return-void
.end method


# virtual methods
.method native readResolve()Ljava/lang/Object;
.end method
