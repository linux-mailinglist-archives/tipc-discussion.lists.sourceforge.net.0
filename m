Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A3D44DECF
	for <lists+tipc-discussion@lfdr.de>; Fri, 12 Nov 2021 01:04:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mlK3H-0007r3-Ud; Fri, 12 Nov 2021 00:04:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jmaloy@redhat.com>) id 1mlK3G-0007qw-8l
 for tipc-discussion@lists.sourceforge.net; Fri, 12 Nov 2021 00:04:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+aI3vIA8L2jTbmaVH9PAGWa1rUBVm1aF92U3pHIQZow=; b=kY/Djcgp5c0KjGqeWDYV4aM8ZR
 QCPW78pRvNzbrJ9Z3g9ftf0y6s+CcFBxUZaVGklyOziQBREryrLZlE8Dlhxm7ows9XooMLzEsu3bn
 IWm8XLoq/ZBtsdvqTZkgJFreB9xTsXlxxunbFwx23wL0IcRF5APNcBR8GHiWvEhIXjJE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+aI3vIA8L2jTbmaVH9PAGWa1rUBVm1aF92U3pHIQZow=; b=ZAK+ba9xjqjCi26HcliZcrXQws
 T9ZXEIn0FTsxl5WR4SL23rq6f6PG5QO1NfJHGXX4Jjlm9YxmUH83cbksk8jS/T6/p7vZHr0sIAJv8
 kDiKFI+B2BznWskV04/ZczzqV8kqKj0LPLXt4Awqe4Q2o+bOiD2YHe4d3BORT5m4+e1g=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mlK3A-0005ag-Tm
 for tipc-discussion@lists.sourceforge.net; Fri, 12 Nov 2021 00:04:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1636675446;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+aI3vIA8L2jTbmaVH9PAGWa1rUBVm1aF92U3pHIQZow=;
 b=DoLkf3EEuoQm3tEPhwfe86gtwXfafh9U8cmsmlNMUaaJsvTNXCqf/QSsZbGCuCx0PyxJJ8
 BTqrrXxkD4GT7ZkFagJ5KY3ISWoymnuBw1K70XAreSEgeU/F/chmDoY3bHkf5/VirHkXlm
 S8Zbx1TEmXh/pT6F8FKZzPFQBp9gEzw=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-171-8AmEYBD0PAmVa_Lvyy-PnA-1; Thu, 11 Nov 2021 19:04:04 -0500
X-MC-Unique: 8AmEYBD0PAmVa_Lvyy-PnA-1
Received: by mail-qk1-f197.google.com with SMTP id
 ay9-20020a05620a178900b00462db20ac02so5252391qkb.10
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 11 Nov 2021 16:04:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=+aI3vIA8L2jTbmaVH9PAGWa1rUBVm1aF92U3pHIQZow=;
 b=16khfxHbo4iTwbVH9WTq1Le22A9hTDGN0OUCAK4HUvgJBKvNbXpq0QJ8bQI8Be984E
 qs5wE8Pur/OPZMwt0Mz6zFk3QSSxZ92uPQ1jdT7cM/11/bJhMUYZymkloka5uGDieV6J
 exRPzPpeZy4ASe16Q+U4VVcjIeJHmGfhy7p4UAWBQFwXThTS4JJ9Gh+UKjQsGx5U5rjx
 Wta+2cCNLo/Ew39/TQB++6OD4trhK21q87F5wcrAqPD/7UVgAEQXthCMmUz99mZnQlTy
 eDby37aqM31D5/4Xow6EyiUAv/p5WIPjQiec/COUw0v/KC/MWYsfzWJ6l9sOW9fRWs/0
 lQfQ==
X-Gm-Message-State: AOAM533J78HoChAPcMc+APy5t7nvEpgsdUDTwuUOCnga7kMUfo/veTgb
 TGDwuBEKrPRTsnag5TKyIQuuWRW3HobwfIKsM9YRvsoI89SvXj7lFsh7puKDvWCiNFabNbNWCrV
 zdKyWIT9K92sXwEFG8jVrhOs07M62rKsvbWYI
X-Received: by 2002:ac8:5996:: with SMTP id e22mr11956147qte.373.1636675443938; 
 Thu, 11 Nov 2021 16:04:03 -0800 (PST)
X-Google-Smtp-Source: ABdhPJymwzqftQwSVQz3EVwVZALeAzcSvuKspR4FbE1BNS8tjVDd4h2McovAbqJCNwooPT1nnA4EMA==
X-Received: by 2002:ac8:5996:: with SMTP id e22mr11956129qte.373.1636675443741; 
 Thu, 11 Nov 2021 16:04:03 -0800 (PST)
Received: from [10.0.0.96] ([24.225.241.171])
 by smtp.gmail.com with ESMTPSA id o2sm2346985qtw.17.2021.11.11.16.04.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Nov 2021 16:04:03 -0800 (PST)
Message-ID: <0f144d68-37c8-1e4a-1516-a3a572f06f8f@redhat.com>
Date: Thu, 11 Nov 2021 19:06:18 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
To: Tadeusz Struk <tadeusz.struk@linaro.org>
References: <20211111205916.37899-1-tadeusz.struk@linaro.org>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <20211111205916.37899-1-tadeusz.struk@linaro.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/11/21 15:59, Tadeusz Struk wrote: > kmemdup can return
 a null pointer so need to check for it, otherwise > the null key will be
 dereferenced later in tipc_crypto_key_xmit as > can be seen in the [...] 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mlK3A-0005ag-Tm
Subject: Re: [tipc-discussion] [PATCH] tipc: check for null after calling
 kmemdup
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Dmitry Vyukov <dvyukov@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 11/11/21 15:59, Tadeusz Struk wrote:
> kmemdup can return a null pointer so need to check for it, otherwise
> the null key will be dereferenced later in tipc_crypto_key_xmit as
> can be seen in the trace [1].
>
> Cc: Jon Maloy <jmaloy@redhat.com>
> Cc: Ying Xue <ying.xue@windriver.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: netdev@vger.kernel.org
> Cc: tipc-discussion@lists.sourceforge.net
> Cc: linux-kernel@vger.kernel.org
> Cc: stable@vger.kernel.org # 5.15, 5.14, 5.10
>
> [1] https://syzkaller.appspot.com/bug?id=bca180abb29567b189efdbdb34cbf7ba851c2a58
>
> Reported-by: Dmitry Vyukov <dvyukov@google.com>
> Signed-off-by: Tadeusz Struk <tadeusz.struk@linaro.org>
> ---
>   net/tipc/crypto.c | 5 +++++
>   1 file changed, 5 insertions(+)
>
> diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
> index dc60c32bb70d..988a343f9fd5 100644
> --- a/net/tipc/crypto.c
> +++ b/net/tipc/crypto.c
> @@ -597,6 +597,11 @@ static int tipc_aead_init(struct tipc_aead **aead, struct tipc_aead_key *ukey,
>   	tmp->cloned = NULL;
>   	tmp->authsize = TIPC_AES_GCM_TAG_SIZE;
>   	tmp->key = kmemdup(ukey, tipc_aead_key_size(ukey), GFP_KERNEL);
> +	if (!tmp->key) {
> +		free_percpu(tmp->tfm_entry);
> +		kfree_sensitive(tmp);
> +		return -ENOMEM;
> +	}
>   	memcpy(&tmp->salt, ukey->key + keylen, TIPC_AES_GCM_SALT_SIZE);
>   	atomic_set(&tmp->users, 0);
>   	atomic64_set(&tmp->seqno, 0);
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
