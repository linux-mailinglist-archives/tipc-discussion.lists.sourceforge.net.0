Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A383D41FE
	for <lists+tipc-discussion@lfdr.de>; Fri, 23 Jul 2021 23:11:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m72Rp-0004vN-6e; Fri, 23 Jul 2021 21:11:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1m72Rn-0004vG-DK
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Jul 2021 21:11:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jd75Ano3FK4pxGhJAKmx9uH/EVQoX1CWnm9NlKIBPBQ=; b=VYaItMM4aUWsfh2YmO+1fZHtvE
 FYn/7q9zqLI5o+oNHWuO0SKDllKBwtWRffKGoxJMB/cd3NxMFN11dyL23oSKhqadzsHL/d7rPmjeQ
 sJKv8GUFEN+UliRDdw0LkwVgkUrf1Iy1CyxaQnrzm9aEUoV/4C7LOlxc5CHaoPx7t/k8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jd75Ano3FK4pxGhJAKmx9uH/EVQoX1CWnm9NlKIBPBQ=; b=e9w/tvIXSem0QVUIBtyWe4RUfC
 lr44pYxXtDPfOI0AaukDitWnH9ERdnJ4mt9OxnjkOhs0XF9P2s/GkpiBBPnMw3k4YZYEUpR1lrT+b
 6x2JBjAMPUzfGh5/AHw2v/RHshGvwfY7095VMpYjT7KX8WyE+7sUT9a6CCgjzNzV8oio=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m72Rb-0008IS-Gs
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Jul 2021 21:11:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1627074649;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jd75Ano3FK4pxGhJAKmx9uH/EVQoX1CWnm9NlKIBPBQ=;
 b=G0nQ1/1Udeob/klhV7tuVePtzx8mwdb/xZrWrPawTUfS4e3+oWo2m5ofLge6BzL3fpO5bT
 wvH2hVH5pe5Z9t/wA899qn89nSiVOsIXymN6hzmr3Q69eQUwypOGzEcJfOz8OulHLJM1vI
 4tUpQkWoyx6sqm89h4daduLdIwpXJsk=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-517-3qTJDK_rOk6ItI9c_P4Gww-1; Fri, 23 Jul 2021 17:10:47 -0400
X-MC-Unique: 3qTJDK_rOk6ItI9c_P4Gww-1
Received: by mail-qt1-f200.google.com with SMTP id
 s14-20020ac8528e0000b029025f76cabdfcso1801594qtn.15
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 23 Jul 2021 14:10:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jd75Ano3FK4pxGhJAKmx9uH/EVQoX1CWnm9NlKIBPBQ=;
 b=V9exEBjQ8Qf+jfyfUxAjEWPjGH3EkVqnxo8Vh2uK3kn2xLNxLbBKbBIy7dclctrmU/
 hxDyI5vv+OocxMZlapwxQILkwlUfxi/YWcEuJp67KGBedSIJDHfn6IZZJq/D2YOP4QWF
 HjMw6Qj57/0HrGfG0ksEtWi/DWVTfOycs6uyWBTlx/GFae7D3alQn/aXcBmGvXpSF2if
 ahOVGodL1OE/W/QbDNaMyQEekgAqUTOwW1NwFnWuvSvfr0XC13pphvnUmhJbGBEYeKTN
 wydDWpDD7RYmbHMiQTsla2yBJAAenMi8KOx1/WhdFIN6VjNQzRP92EHDaICCAzPf+2EX
 DgtQ==
X-Gm-Message-State: AOAM533CUuzy7SJjvGCZEQuYAUzmYEwf+JTjHceIWwTaTHjm6vhmKaBL
 AGsM0yWt6827VVVWlnh+/h+O1nF02nr5jyPHRtXZ12hSDmKqsyjiqstUMB0nQl9QCA+lHXd7ZhH
 ZkwWuyJXU20VNX2wBmC1rfUWSCVaA0Sl1bs2W
X-Received: by 2002:ae9:e8ce:: with SMTP id a197mr6334774qkg.175.1627074646953; 
 Fri, 23 Jul 2021 14:10:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzeJ64KXTxlTp3j2QWzq8X26J9AOUv/RAIgQCUrsJREONuSymaxFcqHcXSF71DmAUvRnOkMLQ==
X-Received: by 2002:ae9:e8ce:: with SMTP id a197mr6334765qkg.175.1627074646770; 
 Fri, 23 Jul 2021 14:10:46 -0700 (PDT)
Received: from [192.168.0.104] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id o2sm12778932qkm.109.2021.07.23.14.10.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 23 Jul 2021 14:10:46 -0700 (PDT)
To: Xin Long <lucien.xin@gmail.com>, tipc-discussion@lists.sourceforge.net
References: <3018b8d7103b4c0a4331b1e03194d047fd163782.1627062230.git.lucien.xin@gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <01d84ba1-c052-de9c-127c-15cf4feea465@redhat.com>
Date: Fri, 23 Jul 2021 17:10:42 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <3018b8d7103b4c0a4331b1e03194d047fd163782.1627062230.git.lucien.xin@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 NICE_REPLY_A           Looks like a legit reply (A)
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m72Rb-0008IS-Gs
Subject: Re: [tipc-discussion] [PATCH net] tipc: do not write skb_shinfo
 frags when doing decrytion
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 23/07/2021 13:43, Xin Long wrote:
> One skb's skb_shinfo frags are not writable, and they can be shared with
> other skbs' like by pskb_copy(). To write the frags may cause other skb's
> data crash.
> 
> So before doing en/decryption, skb_cow_data() should always be called for
> a cloned or nonlinear skb if req dst is using the same sg as req src.
> While at it, the likely branch can be removed, as it will be covered
> by skb_cow_data().
> 
> Note that esp_input() has the same issue, and I will fix it in another
> patch. tipc_aead_encrypt() doesn't have this issue, as it only processes
> linear data in the unlikely branch.
> 
> Fixes: fc1b6d6de220 ("tipc: introduce TIPC encryption & authentication")
> Reported-by: Shuang Li <shuali@redhat.com>
> Signed-off-by: Xin Long <lucien.xin@gmail.com>
> ---
>   net/tipc/crypto.c | 14 ++++----------
>   1 file changed, 4 insertions(+), 10 deletions(-)
> 
> diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
> index e5c43d4d5a75..c9391d38de85 100644
> --- a/net/tipc/crypto.c
> +++ b/net/tipc/crypto.c
> @@ -898,16 +898,10 @@ static int tipc_aead_decrypt(struct net *net, struct tipc_aead *aead,
>   	if (unlikely(!aead))
>   		return -ENOKEY;
>   
> -	/* Cow skb data if needed */
> -	if (likely(!skb_cloned(skb) &&
> -		   (!skb_is_nonlinear(skb) || !skb_has_frag_list(skb)))) {
> -		nsg = 1 + skb_shinfo(skb)->nr_frags;
> -	} else {
> -		nsg = skb_cow_data(skb, 0, &unused);
> -		if (unlikely(nsg < 0)) {
> -			pr_err("RX: skb_cow_data() returned %d\n", nsg);
> -			return nsg;
> -		}
> +	nsg = skb_cow_data(skb, 0, &unused);
> +	if (unlikely(nsg < 0)) {
> +		pr_err("RX: skb_cow_data() returned %d\n", nsg);
> +		return nsg;
>   	}
>   
>   	/* Allocate memory for the AEAD operation */
> 
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
