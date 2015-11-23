.class final Lcom/android/settings/wifi/g;
.super Ljava/lang/Object;
.source "MiuiAccessPoint.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/wifi/AccessPoint;Lcom/android/settings/wifi/AccessPoint;)I
    .locals 1

    .prologue
    .line 302
    instance-of v0, p1, Lcom/android/settings/wifi/d;

    if-nez v0, :cond_0

    .line 303
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    .line 305
    :cond_0
    instance-of v0, p2, Lcom/android/settings/wifi/d;

    if-nez v0, :cond_1

    .line 306
    const/4 v0, -0x1

    goto :goto_0

    .line 308
    :cond_1
    check-cast p1, Lcom/android/settings/wifi/d;

    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/d;->k(Landroid/preference/Preference;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 299
    check-cast p1, Lcom/android/settings/wifi/AccessPoint;

    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/g;->a(Lcom/android/settings/wifi/AccessPoint;Lcom/android/settings/wifi/AccessPoint;)I

    move-result v0

    return v0
.end method
