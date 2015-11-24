.class Lcom/android/settings_ext/ex;
.super Ljava/lang/Object;
.source "MiuiSecurityTrustedCredentials.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic rI:Lcom/android/settings_ext/ev;

.field final synthetic rJ:Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;Lcom/android/settings_ext/ev;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/settings_ext/ex;->rJ:Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

    iput-object p2, p0, Lcom/android/settings_ext/ex;->rI:Lcom/android/settings_ext/ev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/settings_ext/ex;->rI:Lcom/android/settings_ext/ev;

    invoke-virtual {v0}, Lcom/android/settings_ext/ev;->getCount()I

    move-result v0

    if-lt p3, v0, :cond_0

    .line 431
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/ex;->rJ:Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;

    iget-object v1, p0, Lcom/android/settings_ext/ex;->rI:Lcom/android/settings_ext/ev;

    invoke-virtual {v1, p3}, Lcom/android/settings_ext/ev;->O(I)Lcom/android/settings_ext/eu;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;->a(Lcom/android/settings_ext/MiuiSecurityTrustedCredentials$TrustedCredentialFragment;Lcom/android/settings_ext/eu;)V

    goto :goto_0
.end method
