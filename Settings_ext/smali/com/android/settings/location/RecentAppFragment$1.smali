.class Lcom/android/settings/location/RecentAppFragment$1;
.super Ljava/lang/Object;
.source "RecentAppFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic acZ:Lcom/android/settings/location/RecentAppFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/location/RecentAppFragment;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/settings/location/RecentAppFragment$1;->acZ:Lcom/android/settings/location/RecentAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/preference/Preference;Landroid/preference/Preference;)I
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 37
    check-cast p1, Landroid/preference/Preference;

    check-cast p2, Landroid/preference/Preference;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/location/RecentAppFragment$1;->a(Landroid/preference/Preference;Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method
