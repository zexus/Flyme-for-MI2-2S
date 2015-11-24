.class Lcom/android/settings_ext/hr;
.super Ljava/lang/Object;
.source "ZonePicker.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private Ac:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Lcom/android/settings_ext/hr;->Ac:Ljava/lang/String;

    .line 360
    return-void
.end method

.method private m(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 384
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/HashMap;Ljava/util/HashMap;)I
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/settings_ext/hr;->Ac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/android/settings_ext/hr;->Ac:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 374
    invoke-direct {p0, v0}, Lcom/android/settings_ext/hr;->m(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 375
    invoke-direct {p0, v1}, Lcom/android/settings_ext/hr;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 380
    :goto_0
    return v0

    .line 375
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 376
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings_ext/hr;->m(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 377
    const/4 v0, -0x1

    goto :goto_0

    .line 380
    :cond_2
    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 355
    check-cast p1, Ljava/util/HashMap;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ext/hr;->a(Ljava/util/HashMap;Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method
