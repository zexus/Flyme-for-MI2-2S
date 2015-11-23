.class public Lcom/android/settings/ProxySelector;
.super Landroid/app/Fragment;
.source "ProxySelector.java"

# interfaces
.implements Lcom/android/settings/bP;


# instance fields
.field private bX:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mView:Landroid/view/View;

.field uo:Landroid/widget/EditText;

.field up:Landroid/widget/EditText;

.field uq:Landroid/widget/EditText;

.field ur:Landroid/widget/Button;

.field us:Landroid/widget/Button;

.field ut:Landroid/widget/Button;

.field uu:Landroid/view/View$OnClickListener;

.field uv:Landroid/view/View$OnClickListener;

.field uw:Landroid/view/View$OnClickListener;

.field ux:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 246
    new-instance v0, Lcom/android/settings/fu;

    invoke-direct {v0, p0}, Lcom/android/settings/fu;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->uu:Landroid/view/View$OnClickListener;

    .line 254
    new-instance v0, Lcom/android/settings/fv;

    invoke-direct {v0, p0}, Lcom/android/settings/fv;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->uv:Landroid/view/View$OnClickListener;

    .line 262
    new-instance v0, Lcom/android/settings/fw;

    invoke-direct {v0, p0}, Lcom/android/settings/fw;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->uw:Landroid/view/View$OnClickListener;

    .line 269
    new-instance v0, Lcom/android/settings/fx;

    invoke-direct {v0, p0}, Lcom/android/settings/fx;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->ux:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 123
    const v0, 0x7f100225

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->uo:Landroid/widget/EditText;

    .line 124
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->uo:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->ux:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 126
    const v0, 0x7f100226

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->up:Landroid/widget/EditText;

    .line 127
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->up:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->uu:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->up:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->ux:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 130
    const v0, 0x7f100227

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->uq:Landroid/widget/EditText;

    .line 131
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->uq:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->ux:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 133
    const v0, 0x7f100228

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->ur:Landroid/widget/Button;

    .line 134
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->ur:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->uu:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v0, 0x7f100229

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->us:Landroid/widget/Button;

    .line 137
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->us:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->uv:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v0, 0x7f10022a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->ut:Landroid/widget/Button;

    .line 140
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->ut:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->uw:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void
.end method

.method private showDialog(I)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->bX:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "ProxySelector"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/bP;I)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->bX:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 119
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->bX:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 188
    invoke-static {p0, p1, p2}, Landroid/net/Proxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 203
    const-string v0, "ProxySelector"

    const-string v1, "Unknown proxy settings error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 190
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 192
    :pswitch_1
    const v0, 0x7f090127

    goto :goto_0

    .line 194
    :pswitch_2
    const v0, 0x7f090124

    goto :goto_0

    .line 196
    :pswitch_3
    const v0, 0x7f090126

    goto :goto_0

    .line 198
    :pswitch_4
    const v0, 0x7f090128

    goto :goto_0

    .line 200
    :pswitch_5
    const v0, 0x7f090125

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method fU()V
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 145
    const-string v2, ""

    .line 147
    const-string v1, ""

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v5, "connectivity"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 152
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_4

    .line 154
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    .line 156
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object v0, v2

    move v2, v1

    move-object v1, v6

    .line 159
    :goto_0
    if-nez v0, :cond_0

    .line 160
    const-string v0, ""

    .line 163
    :cond_0
    iget-object v5, p0, Lcom/android/settings/ProxySelector;->uo:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    if-ne v2, v3, :cond_3

    const-string v0, ""

    .line 166
    :goto_1
    iget-object v2, p0, Lcom/android/settings/ProxySelector;->up:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->uq:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 172
    const-string v1, "button-label"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/android/settings/ProxySelector;->ur:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_1
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 179
    invoke-virtual {v4, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    :cond_2
    return-void

    .line 165
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v2

    move v2, v3

    goto :goto_0
.end method

.method fV()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 213
    iget-object v1, p0, Lcom/android/settings/ProxySelector;->uo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lcom/android/settings/ProxySelector;->up:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 215
    iget-object v3, p0, Lcom/android/settings/ProxySelector;->uq:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-static {v1, v2, v3}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 219
    if-eqz v4, :cond_0

    .line 220
    invoke-direct {p0, v0}, Lcom/android/settings/ProxySelector;->showDialog(I)V

    .line 243
    :goto_0
    return v0

    .line 224
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 226
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 232
    :cond_1
    new-instance v2, Landroid/net/ProxyInfo;

    invoke-direct {v2, v1, v0, v3}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 242
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 243
    const/4 v0, 0x1

    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 85
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/android/settings/ProxySelector;->uo:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 88
    iget-object v1, p0, Lcom/android/settings/ProxySelector;->up:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 89
    iget-object v1, p0, Lcom/android/settings/ProxySelector;->uq:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 90
    iget-object v1, p0, Lcom/android/settings/ProxySelector;->ur:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 91
    iget-object v1, p0, Lcom/android/settings/ProxySelector;->us:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 92
    iget-object v1, p0, Lcom/android/settings/ProxySelector;->ut:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 99
    if-nez p1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/settings/ProxySelector;->uo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/android/settings/ProxySelector;->up:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 102
    iget-object v3, p0, Lcom/android/settings/ProxySelector;->uq:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v1, v2, v3}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090122

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090123

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 111
    :cond_0
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 72
    const v0, 0x7f0400dd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mView:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/ProxySelector;->d(Landroid/view/View;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->fU()V

    .line 76
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mView:Landroid/view/View;

    return-object v0
.end method
