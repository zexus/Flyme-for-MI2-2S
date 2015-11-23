.class Lcom/android/settings_ext/gK;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

.field final synthetic yF:Lcom/android/settings_ext/gV;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/gV;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/settings_ext/gK;->yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings_ext/gK;->yF:Lcom/android/settings_ext/gV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/settings_ext/gK;->yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/android/settings_ext/gK;->yF:Lcom/android/settings_ext/gV;

    invoke-virtual {v1, p3}, Lcom/android/settings_ext/gV;->ab(I)Lcom/android/settings_ext/gU;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/TrustedCredentialsSettings;->a(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/gU;)V

    .line 229
    return-void
.end method
