.class public La/a/a/a/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:La/a/a/a/a/d;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(La/a/a/a/a/d;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 90
    iput-object p1, p0, La/a/a/a/a/d$a;->a:La/a/a/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, La/a/a/a/a/d$a;->b:Ljava/lang/String;

    .line 92
    iput-object p3, p0, La/a/a/a/a/d$a;->c:Ljava/lang/String;

    .line 93
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, La/a/a/a/a/d$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, La/a/a/a/a/d$a;->c:Ljava/lang/String;

    return-object v0
.end method
