.class public Lcom/android/settings_ext/wifi/EditTetherFragment;
.super Lcom/android/settings_ext/BaseEditFragment;
.source "EditTetherFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/settings_ext/wifi/j;


# instance fields
.field private D:Landroid/widget/EditText;

.field private asA:Landroid/widget/TextView;

.field private asB:I

.field private asC:Landroid/widget/CheckBox;

.field ym:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings_ext/BaseEditFragment;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->asB:I

    return-void
.end method

.method public static c(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tX()V
    .locals 3

    .prologue
    const v2, 0x7f1002f9

    .line 153
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/EditTetherFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 154
    iget v1, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->asB:I

    if-nez v1, :cond_0

    .line 155
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private tY()V
    .locals 2

    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->D:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->asC:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 166
    return-void

    .line 162
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method private validate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 143
    iget-object v0, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->asA:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->asA:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->asB:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->D:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    .line 146
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/EditTetherFragment;->bf(Z)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings_ext/wifi/EditTetherFragment;->bf(Z)V

    goto :goto_0
.end method


# virtual methods
.method public W()V
    .locals 3

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/EditTetherFragment;->tN()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 134
    const/4 v0, 0x0

    .line 135
    if-eqz v1, :cond_0

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    const-string v2, "config"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 139
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/EditTetherFragment;->b(Landroid/os/Bundle;)V

    .line 140
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 46
    const v0, 0x7f04012b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    return-object v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/EditTetherFragment;->validate()V

    .line 176
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public bf(Z)V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/wifi/EditTetherFragment;->i(Z)V

    .line 124
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const v0, 0x7f09033d

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/EditTetherFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/EditTetherFragment;->tY()V

    .line 171
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 190
    iput p3, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->asB:I

    .line 191
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/EditTetherFragment;->tX()V

    .line 192
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/EditTetherFragment;->validate()V

    .line 193
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/BaseEditFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/EditTetherFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->ym:Landroid/net/wifi/WifiConfiguration;

    .line 54
    iget-object v0, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->ym:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->ym:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/EditTetherFragment;->c(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->asB:I

    .line 58
    :cond_0
    const v0, 0x7f1001e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 59
    const v1, 0x7f100148

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 60
    const v1, 0x7f1001e4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->asA:Landroid/widget/TextView;

    .line 61
    iget-object v1, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->asA:Landroid/widget/TextView;

    new-array v2, v6, [Landroid/text/InputFilter;

    new-instance v3, Lcom/android/settings_ext/dF;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Lcom/android/settings_ext/dF;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 63
    const v1, 0x7f1001fa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->D:Landroid/widget/EditText;

    .line 64
    iget-object v1, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->ym:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->asA:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->ym:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->asA:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->asA:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 67
    iget v1, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->asB:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 68
    iget v1, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->asB:I

    if-ne v1, v6, :cond_1

    .line 69
    iget-object v1, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->D:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->ym:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->asA:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 74
    iget-object v1, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->D:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 75
    const v1, 0x7f1001fc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->asC:Landroid/widget/CheckBox;

    .line 76
    iget-object v1, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->asC:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 79
    invoke-virtual {v0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 81
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/EditTetherFragment;->tX()V

    .line 82
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/EditTetherFragment;->validate()V

    .line 83
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/settings_ext/BaseEditFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 88
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/EditTetherFragment;->tY()V

    .line 89
    return-void
.end method

.method public tN()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 101
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 102
    iget-object v1, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->asA:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 104
    iget v1, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->asB:I

    packed-switch v1, :pswitch_data_0

    .line 118
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    .line 106
    :pswitch_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 110
    :pswitch_1
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 111
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 112
    iget-object v1, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->D:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/settings_ext/wifi/EditTetherFragment;->D:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
