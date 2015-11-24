.class Lcom/android/settings_ext/accounts/ChooseAccountActivity$ProviderEntry;
.super Ljava/lang/Object;
.source "ChooseAccountActivity.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final Ck:Ljava/lang/CharSequence;

.field private final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/settings_ext/accounts/ChooseAccountActivity$ProviderEntry;->Ck:Ljava/lang/CharSequence;

    .line 84
    iput-object p2, p0, Lcom/android/settings_ext/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;

    .line 85
    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings_ext/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings_ext/accounts/ChooseAccountActivity$ProviderEntry;->Ck:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/accounts/ChooseAccountActivity$ProviderEntry;)I
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings_ext/accounts/ChooseAccountActivity$ProviderEntry;->Ck:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, -0x1

    .line 94
    :goto_0
    return v0

    .line 91
    :cond_0
    iget-object v0, p1, Lcom/android/settings_ext/accounts/ChooseAccountActivity$ProviderEntry;->Ck:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 92
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/accounts/ChooseAccountActivity$ProviderEntry;->Ck:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/android/settings_ext/accounts/ChooseAccountActivity$ProviderEntry;->Ck:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 79
    check-cast p1, Lcom/android/settings_ext/accounts/ChooseAccountActivity$ProviderEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/accounts/ChooseAccountActivity$ProviderEntry;->a(Lcom/android/settings_ext/accounts/ChooseAccountActivity$ProviderEntry;)I

    move-result v0

    return v0
.end method
