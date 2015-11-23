.class Lcom/android/settings_ext/accounts/AccountPreferenceBase$1$1;
.super Ljava/lang/Object;
.source "AccountPreferenceBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Bx:Lcom/android/settings_ext/accounts/AccountPreferenceBase$1;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/accounts/AccountPreferenceBase$1;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings_ext/accounts/AccountPreferenceBase$1$1;->Bx:Lcom/android/settings_ext/accounts/AccountPreferenceBase$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings_ext/accounts/AccountPreferenceBase$1$1;->Bx:Lcom/android/settings_ext/accounts/AccountPreferenceBase$1;

    iget-object v0, v0, Lcom/android/settings_ext/accounts/AccountPreferenceBase$1;->Bw:Lcom/android/settings_ext/accounts/AccountPreferenceBase;

    invoke-virtual {v0}, Lcom/android/settings_ext/accounts/AccountPreferenceBase;->ib()V

    .line 126
    return-void
.end method
