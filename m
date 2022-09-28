Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BBA5EDD93
	for <lists+tipc-discussion@lfdr.de>; Wed, 28 Sep 2022 15:18:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1odWwz-0006Ks-13;
	Wed, 28 Sep 2022 13:18:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jmaloy@redhat.com>) id 1odWwx-0006Km-7y
 for tipc-discussion@lists.sourceforge.net;
 Wed, 28 Sep 2022 13:18:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O8CHATsj+W21+19tV87eTnDiAyPk+14vnUWU7b9stwM=; b=jIcvo3vDPCIgBuebq0jRNSjkbK
 lFnf5OcmBETbnE9nOBqSbnpEl4W/XmaN718jomdTljDo903DEHASxWb77k2QaQGaptb8++ANN2GYC
 hE8JwMR20pPZCV+UioM6XXfk7Qwq2iEXc/n92YBE7mqx5+R4F3wKfuT6+mI7DcwsJL6w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O8CHATsj+W21+19tV87eTnDiAyPk+14vnUWU7b9stwM=; b=Ty7OWcuzFwHVmSaeWq7FDtqCQs
 XrXs+IyR816/Cilx3Jm73JYqpEuPBB0m0yguKMGZkjlxUqCVBLKIa3gKyEOsNN0mcQphQIF5dslSp
 WjsbLbb2fWQcooENjXLBgGPz2HerlTD6oZxpV0nYe1p1aHw+UT/OH81YGYK+wQhGm0pw=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odWwp-005a9P-MM for tipc-discussion@lists.sourceforge.net;
 Wed, 28 Sep 2022 13:18:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1664371073;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=O8CHATsj+W21+19tV87eTnDiAyPk+14vnUWU7b9stwM=;
 b=GB75KrehZnvrmoACX7vVBTfNOfwJU+xPuhQe7Tk8vuBStHwIsBdPqF2s1l78XBtfiGeIqZ
 cOP8OdYjwZgsjnv1MNCNvWdiWPrmopwSQmixNNVYSj+EsJvfzCWZ+KeLq2auQKdofiTxSA
 r0FloexNwydtTH7vVxhzoNAyihPYpJQ=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-99-d39FyScnMRWaJYyTsDlOPQ-1; Wed, 28 Sep 2022 09:17:49 -0400
X-MC-Unique: d39FyScnMRWaJYyTsDlOPQ-1
Received: by mail-qk1-f198.google.com with SMTP id
 de16-20020a05620a371000b006ceb92bc740so9508495qkb.15
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 28 Sep 2022 06:17:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date;
 bh=O8CHATsj+W21+19tV87eTnDiAyPk+14vnUWU7b9stwM=;
 b=46ZZ9s8B6i1ykhyRvOC6QaVBxnL96Ml9pNiVNRUb5NunoUy+9hrpK+9W7Vcn1PN7+H
 lVAbrCa88gEQH7NZi4gQ/wD6GtNZQMTfJQ4yyPi73UROtPgKrM+GhnSsCbx5HQ8kjgp/
 /cVtuzmTCcL8b77gwoVXkp8bEKYAk0bDfFz445nIqobj4LEDcJGzQNCX4T2F7JHyLkln
 mXD3KQsm7db9p1r4B2y6+GlBPeRKYTlve4i4ms+S4C1TfqXQMlYwRzahP0cht0kAzL8f
 rvCAcIdw6twUWm5DaJpyeW04uPVtW/FjH0XpuSb36ZqF5nv9bG7yp9RIovHhB5g9pYFG
 NGcw==
X-Gm-Message-State: ACrzQf2zKzuE7DkPfV2DDZAPodmLrIDJZuNWjogthBDVdzsIwAFOLObk
 Js++GPBu3optEfeKaXearVO7ymFh4dnBXOXDRezcfWxLn9wVyS8NoqaR9IEAtWdOdh6snFI32BN
 PHrbUch9jW8R+1PKSuPnArkKbs2OCUIWnCDbr
X-Received: by 2002:a05:622a:648:b0:35d:4b13:362d with SMTP id
 a8-20020a05622a064800b0035d4b13362dmr7498463qtb.283.1664371067783; 
 Wed, 28 Sep 2022 06:17:47 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM6rWOKRCql6jp+ThtkcUj/iVHpzkuOy1DcinAZ1erkLV+yzruSMLBErZUaZakiMOPlE9rUUDw==
X-Received: by 2002:a05:622a:648:b0:35d:4b13:362d with SMTP id
 a8-20020a05622a064800b0035d4b13362dmr7498435qtb.283.1664371067508; 
 Wed, 28 Sep 2022 06:17:47 -0700 (PDT)
Received: from [10.0.0.96] ([24.225.241.171]) by smtp.gmail.com with ESMTPSA id
 fg12-20020a05622a580c00b0035d5374efccsm2015266qtb.16.2022.09.28.06.17.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Sep 2022 06:17:46 -0700 (PDT)
Message-ID: <b08b12ca-c729-c50b-9364-76d940bf80f3@redhat.com>
Date: Wed, 28 Sep 2022 09:17:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
To: Yuan Can <yuancan@huawei.com>, ying.xue@windriver.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
References: <20220928085636.71749-1-yuancan@huawei.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <20220928085636.71749-1-yuancan@huawei.com>
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
 Content preview:  On 9/28/22 04:56,
 Yuan Can wrote: > After commit 09b5678c778f("tipc:
 remove dead code in tipc_net and relatives"), > struct distr_queue_item is
 not used any more and can be removed as well. > > Signed [...] 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1odWwp-005a9P-MM
Subject: Re: [tipc-discussion] [PATCH] net/tipc: Remove unused struct
 distr_queue_item
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



On 9/28/22 04:56, Yuan Can wrote:
> After commit 09b5678c778f("tipc: remove dead code in tipc_net and relatives"),
> struct distr_queue_item is not used any more and can be removed as well.
>
> Signed-off-by: Yuan Can <yuancan@huawei.com>
> ---
>   net/tipc/name_distr.c | 8 --------
>   1 file changed, 8 deletions(-)
>
> diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c
> index 8267b751a526..190b49c5cbc3 100644
> --- a/net/tipc/name_distr.c
> +++ b/net/tipc/name_distr.c
> @@ -41,14 +41,6 @@
>   
>   int sysctl_tipc_named_timeout __read_mostly = 2000;
>   
> -struct distr_queue_item {
> -	struct distr_item i;
> -	u32 dtype;
> -	u32 node;
> -	unsigned long expires;
> -	struct list_head next;
> -};
> -
>   /**
>    * publ_to_item - add publication info to a publication message
>    * @p: publication info
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
