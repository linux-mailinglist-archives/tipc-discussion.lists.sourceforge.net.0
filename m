Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8757B5C14
	for <lists+tipc-discussion@lfdr.de>; Mon,  2 Oct 2023 22:31:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1qnPZ7-0001em-8y;
	Mon, 02 Oct 2023 20:30:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jmaloy@redhat.com>) id 1qnPZ6-0001eg-2j
 for tipc-discussion@lists.sourceforge.net;
 Mon, 02 Oct 2023 20:30:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w8f6DdK1GdbJ9qglZe36tie4rL6xJEQDl6yTedgx1kc=; b=l244LSS0mspievX4Ujlbs/6AvF
 fcUQKhYjjnaIV2bX6CgijlizF4GtJBEkA9/eD/qNh0+avhUD6cMKv/RMytOkBaaVgsFIU01gdTF4/
 uRen0rv9zIVKY2AX+8wXj8pqL5LZ4Nsnnh016faRqQrjDy2Fl5cbRu3hwj+4rfUMir48=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=w8f6DdK1GdbJ9qglZe36tie4rL6xJEQDl6yTedgx1kc=; b=I7WZRnO6QNttgqu7B/59sLdmP+
 QMTQhks5CLVMaHijwdKWO1ozmqqtXqiHCPyCViPcUJMgdXns1i5gn7jsblwARu6rlw9UICSxZlL1v
 mqY9R9ZnDou+EcYL2z8eNcLuRmztg3kIa6c2kxkba6CEHW9VoKuEAmnww9vM2ztNkZFU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qnPZ1-0000Xn-4Q for tipc-discussion@lists.sourceforge.net;
 Mon, 02 Oct 2023 20:30:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1696278640;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=w8f6DdK1GdbJ9qglZe36tie4rL6xJEQDl6yTedgx1kc=;
 b=ZxJUvglUqbHJ09ME0u8L0n/53qwCWEVGcPoIleUMyGyuo4/P1jMVO7YlzU6v/AlwG4Vrs7
 FRkSAKxyfvmQqWf4mg3taqAE9arskrI/SMm3n3lP12ygtNhD927MuLNhU1z2ZqUyCES7wK
 S/b0hE/ftX4cQTBntQjtBIF/hpTsCwU=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-414-7TxdedVcNeC2HVXOq-z1Yw-1; Mon, 02 Oct 2023 16:30:39 -0400
X-MC-Unique: 7TxdedVcNeC2HVXOq-z1Yw-1
Received: by mail-qv1-f72.google.com with SMTP id
 6a1803df08f44-65b00c2cbb6so3862076d6.1
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 02 Oct 2023 13:30:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696278639; x=1696883439;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=w8f6DdK1GdbJ9qglZe36tie4rL6xJEQDl6yTedgx1kc=;
 b=mEowUCRynAjY1nvd3AZHgOeJqGPQSUMKPJuaDPubjln0VdR4XHiPjB2f8TlY6GggZo
 wKF6EkdG3x0k38w+dODgdpTd3HiA+FGv7aBhZzCQRJPGCla+cxsK/Kql8vk70b3pA9hL
 kNTBakQzp/T02vAFDRYG/6rCkcgpWK/akYyYQIzShZCrYQeGypcPr4VOT0lRctey6F0B
 /QAj9kmLf3WXo1joPqTnBWgwMEe+bbenm+0gtVauG68c++NVwdjmALajgeDvDC2DwVuM
 QDb1w7oS5BTVuH4bijzAhQNyXeAeA1PWLz10A1MM5n/fiJEbz52wxztoqYS/V4oPFsiT
 ZDFg==
X-Gm-Message-State: AOJu0Yz1qFVQYZilbiO1+TZZwpXO/IxBjpOad9H0LO/VVltQbDYleYOZ
 onX7tDoe4lZdWqmTk5odSe/gMwMaS/YVNXsGWQ5Gh7XLlrvtLsH36DMhEhcA8+qKKArz8YoFDtZ
 JzM8pG+wPFsCNcz08q4ztKKCVpa07C8X0aQfreE6XY6zRNVI=
X-Received: by 2002:a05:6214:500b:b0:65d:343:8e50 with SMTP id
 jo11-20020a056214500b00b0065d03438e50mr17919987qvb.3.1696278639174; 
 Mon, 02 Oct 2023 13:30:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEEBzcp3LOMaX+vRfy6OADLYWwS1aUlqXi3WUStAokU3G7oCq11ynu1Wreo7RqMGIcieUkl6A==
X-Received: by 2002:a05:6214:500b:b0:65d:343:8e50 with SMTP id
 jo11-20020a056214500b00b0065d03438e50mr17919965qvb.3.1696278638861; 
 Mon, 02 Oct 2023 13:30:38 -0700 (PDT)
Received: from [10.0.0.97] ([24.225.234.80]) by smtp.gmail.com with ESMTPSA id
 h3-20020a0cf403000000b00655d711180dsm4844123qvl.17.2023.10.02.13.30.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Oct 2023 13:30:38 -0700 (PDT)
Message-ID: <a2a43d5a-678d-129b-d258-d559df42431f@redhat.com>
Date: Mon, 2 Oct 2023 16:30:37 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: Chengfeng Ye <dg573847474@gmail.com>, ying.xue@windriver.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com
References: <20230927181414.59928-1-dg573847474@gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <20230927181414.59928-1-dg573847474@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2023-09-27 14:14,
 Chengfeng Ye wrote: > It seems that tipc_crypto_key_revoke()
 could be be invoked by > wokequeue tipc_crypto_work_rx() under process context
 and > timer/rx callback under softirq c [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.3 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qnPZ1-0000Xn-4Q
Subject: Re: [tipc-discussion] [PATCH] tipc: fix a potential deadlock on
 &tx->lock
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: netdev@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 2023-09-27 14:14, Chengfeng Ye wrote:
> It seems that tipc_crypto_key_revoke() could be be invoked by
> wokequeue tipc_crypto_work_rx() under process context and
> timer/rx callback under softirq context, thus the lock acquisition
> on &tx->lock seems better use spin_lock_bh() to prevent possible
> deadlock.
>
> This flaw was found by an experimental static analysis tool I am
> developing for irq-related deadlock.
>
> tipc_crypto_work_rx() <workqueue>
> --> tipc_crypto_key_distr()
> --> tipc_bcast_xmit()
> --> tipc_bcbase_xmit()
> --> tipc_bearer_bc_xmit()
> --> tipc_crypto_xmit()
> --> tipc_ehdr_build()
> --> tipc_crypto_key_revoke()
> --> spin_lock(&tx->lock)
> <timer interrupt>
>     --> tipc_disc_timeout()
>     --> tipc_bearer_xmit_skb()
>     --> tipc_crypto_xmit()
>     --> tipc_ehdr_build()
>     --> tipc_crypto_key_revoke()
>     --> spin_lock(&tx->lock) <deadlock here>
>
> Signed-off-by: Chengfeng Ye <dg573847474@gmail.com>
> ---
>   net/tipc/crypto.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
> index 302fd749c424..43c3f1c971b8 100644
> --- a/net/tipc/crypto.c
> +++ b/net/tipc/crypto.c
> @@ -1441,14 +1441,14 @@ static int tipc_crypto_key_revoke(struct net *net, u8 tx_key)
>   	struct tipc_crypto *tx = tipc_net(net)->crypto_tx;
>   	struct tipc_key key;
>   
> -	spin_lock(&tx->lock);
> +	spin_lock_bh(&tx->lock);
>   	key = tx->key;
>   	WARN_ON(!key.active || tx_key != key.active);
>   
>   	/* Free the active key */
>   	tipc_crypto_key_set_state(tx, key.passive, 0, key.pending);
>   	tipc_crypto_key_detach(tx->aead[key.active], &tx->lock);
> -	spin_unlock(&tx->lock);
> +	spin_unlock_bh(&tx->lock);
>   
>   	pr_warn("%s: key is revoked\n", tx->name);
>   	return -EKEYREVOKED;
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
