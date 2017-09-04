.class public final Lss/ss/gK/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/ss/gK/b$a;
    }
.end annotation


# instance fields
.field public final a:Lss/ag;

.field public final b:Lss/ak;


# direct methods
.method private constructor <init>(Lss/ag;Lss/ak;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss/ss/gK/b;->a:Lss/ag;

    iput-object p2, p0, Lss/ss/gK/b;->b:Lss/ak;

    return-void
.end method

.method synthetic constructor <init>(Lss/ag;Lss/ak;Lss/ss/gK/c;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lss/ss/gK/b;-><init>(Lss/ag;Lss/ak;)V

    return-void
.end method

.method public static a(Lss/ak;Lss/ag;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lss/ak;->b()I

    move-result v1

    sparse-switch v1, :sswitch_data_46

    :cond_8
    :goto_8
    return v0

    :sswitch_9
    const-string v1, "Expires"

    invoke-virtual {p0, v1}, Lss/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    invoke-virtual {p0}, Lss/ak;->h()Lss/e;

    move-result-object v1

    invoke-virtual {v1}, Lss/e;->c()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_30

    invoke-virtual {p0}, Lss/ak;->h()Lss/e;

    move-result-object v1

    invoke-virtual {v1}, Lss/e;->e()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {p0}, Lss/ak;->h()Lss/e;

    move-result-object v1

    invoke-virtual {v1}, Lss/e;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_30
    :sswitch_30
    invoke-virtual {p0}, Lss/ak;->h()Lss/e;

    move-result-object v1

    invoke-virtual {v1}, Lss/e;->b()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lss/ag;->f()Lss/e;

    move-result-object v1

    invoke-virtual {v1}, Lss/e;->b()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_data_46
    .sparse-switch
        0xc8 -> :sswitch_30
        0xcb -> :sswitch_30
        0xcc -> :sswitch_30
        0x12c -> :sswitch_30
        0x12d -> :sswitch_30
        0x12e -> :sswitch_9
        0x133 -> :sswitch_9
        0x134 -> :sswitch_30
        0x194 -> :sswitch_30
        0x195 -> :sswitch_30
        0x19a -> :sswitch_30
        0x19e -> :sswitch_30
        0x1f5 -> :sswitch_30
    .end sparse-switch
.end method
