.class public Lcom/android/settings/wifi/P;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private D:Landroid/widget/EditText;

.field private final anX:Landroid/content/DialogInterface$OnClickListener;

.field private asA:Landroid/widget/TextView;

.field private asB:I

.field private mView:Landroid/view/View;

.field ym:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .prologue
    .line 63
    const v0, 0x7f0a0041

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/P;->asB:I

    .line 64
    iput-object p2, p0, Lcom/android/settings/wifi/P;->anX:Landroid/content/DialogInterface$OnClickListener;

    .line 65
    iput-object p3, p0, Lcom/android/settings/wifi/P;->ym:Landroid/net/wifi/WifiConfiguration;

    .line 66
    if-eqz p3, :cond_0

    .line 67
    invoke-static {p3}, Lcom/android/settings/wifi/P;->c(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/P;->asB:I

    .line 69
    :cond_0
    return-void
.end method

.method public static c(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tX()V
    .locals 2

    .prologue
    const v1, 0x7f1002f9

    .line 185
    iget v0, p0, Lcom/android/settings/wifi/P;->asB:I

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/settings/wifi/P;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/P;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private validate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 147
    iget-object v0, p0, Lcom/android/settings/wifi/P;->asA:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/P;->asA:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/P;->asB:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/P;->D:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    .line 150
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/P;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/P;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/settings/wifi/P;->validate()V

    .line 171
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/settings/wifi/P;->D:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 161
    return-void

    .line 157
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/wifi/P;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04012b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/P;->mView:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/P;->mView:Landroid/view/View;

    const v1, 0x7f1001e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 113
    iget-object v1, p0, Lcom/android/settings/wifi/P;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/P;->setView(Landroid/view/View;)V

    .line 114
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/P;->setInverseBackgroundForced(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/wifi/P;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 118
    const v1, 0x7f09033d

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/P;->setTitle(I)V

    .line 119
    iget-object v1, p0, Lcom/android/settings/wifi/P;->mView:Landroid/view/View;

    const v3, 0x7f100148

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/wifi/P;->mView:Landroid/view/View;

    const v3, 0x7f1001e4

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/P;->asA:Landroid/widget/TextView;

    .line 121
    iget-object v1, p0, Lcom/android/settings/wifi/P;->mView:Landroid/view/View;

    const v3, 0x7f1001fa

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/wifi/P;->D:Landroid/widget/EditText;

    .line 123
    const/4 v1, -0x1

    const v3, 0x7f090307

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/P;->anX:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/settings/wifi/P;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 124
    const/4 v1, -0x2

    const v3, 0x7f090309

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/P;->anX:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/wifi/P;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 127
    iget-object v1, p0, Lcom/android/settings/wifi/P;->ym:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/settings/wifi/P;->asA:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/P;->ym:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget v1, p0, Lcom/android/settings/wifi/P;->asB:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 130
    iget v1, p0, Lcom/android/settings/wifi/P;->asB:I

    if-ne v1, v5, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/settings/wifi/P;->D:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/P;->ym:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/P;->asA:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/wifi/P;->D:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/wifi/P;->mView:Landroid/view/View;

    const v2, 0x7f1001fc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 140
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-direct {p0}, Lcom/android/settings/wifi/P;->tX()V

    .line 143
    invoke-direct {p0}, Lcom/android/settings/wifi/P;->validate()V

    .line 144
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 175
    iput p3, p0, Lcom/android/settings/wifi/P;->asB:I

    .line 176
    invoke-direct {p0}, Lcom/android/settings/wifi/P;->tX()V

    .line 177
    invoke-direct {p0}, Lcom/android/settings/wifi/P;->validate()V

    .line 178
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public tN()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 80
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 88
    iget-object v1, p0, Lcom/android/settings/wifi/P;->asA:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 90
    iget v1, p0, Lcom/android/settings/wifi/P;->asB:I

    packed-switch v1, :pswitch_data_0

    .line 104
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    .line 92
    :pswitch_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 97
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 98
    iget-object v1, p0, Lcom/android/settings/wifi/P;->D:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/settings/wifi/P;->D:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
