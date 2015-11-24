.class Lcom/android/settings_ext/accounts/AccountSettings$2;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic BD:Lcom/android/settings_ext/accounts/AccountSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/accounts/AccountSettings;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/settings_ext/accounts/AccountSettings$2;->BD:Lcom/android/settings_ext/accounts/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/accounts/AccountSettings$AccountPreference;Lcom/android/settings_ext/accounts/AccountSettings$AccountPreference;)I
    .locals 2

    .prologue
    .line 404
    invoke-static {p1}, Lcom/android/settings_ext/accounts/AccountSettings$AccountPreference;->a(Lcom/android/settings_ext/accounts/AccountSettings$AccountPreference;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/settings_ext/accounts/AccountSettings$AccountPreference;->a(Lcom/android/settings_ext/accounts/AccountSettings$AccountPreference;)Ljava/lang/CharSequence;

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
    .line 401
    check-cast p1, Lcom/android/settings_ext/accounts/AccountSettings$AccountPreference;

    check-cast p2, Lcom/android/settings_ext/accounts/AccountSettings$AccountPreference;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ext/accounts/AccountSettings$2;->a(Lcom/android/settings_ext/accounts/AccountSettings$AccountPreference;Lcom/android/settings_ext/accounts/AccountSettings$AccountPreference;)I

    move-result v0

    return v0
.end method
