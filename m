Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8733611C5F1
	for <lists+tipc-discussion@lfdr.de>; Thu, 12 Dec 2019 07:28:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ifHxF-0005pg-No; Thu, 12 Dec 2019 06:28:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1ifHxD-0005pZ-Tk
 for tipc-discussion@lists.sourceforge.net; Thu, 12 Dec 2019 06:28:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H7RR71RtDt7+IpLTYZKyaaj71OUDVuUVoz6XnIREVGE=; b=SpeAjRPmEHxAhLofYGmk4WetXa
 0+Va6zBM8NkrS3ZsRCWHB34FW4nutbVqZMDXB0VE5FPI4GL1yatBaGPx1begAXdmxDVuUnXZRTCOF
 nzeOk77xr3r824VeKFIX9Ncp/rxIsRpPvXDD2Nfo6Un1VzV7otzavvIBTfZI4ouqPR0s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H7RR71RtDt7+IpLTYZKyaaj71OUDVuUVoz6XnIREVGE=; b=jwgmH1j+zguZwav/p3/3pD2Mcb
 GWHS0elFRXnI7TxoKG2tM/Md3DfJniUmr+9peHhjEijCyB8oXxA9EEO+i6iX83fDwsQFraJvYJpFs
 ty6u0xbN71RYmFGgGtVWK2nHmUXX8luzkbdyLwI74k0TORnmoX0swQ1W7mA/Aq+XTIy0=;
Received: from mail.windriver.com ([147.11.1.11])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1ifHxB-009z8Z-S6
 for tipc-discussion@lists.sourceforge.net; Thu, 12 Dec 2019 06:28:03 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xBC6RfSb021450
 (version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
 Wed, 11 Dec 2019 22:27:41 -0800 (PST)
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Wed, 11 Dec
 2019 22:27:40 -0800
To: <paulmck@kernel.org>
References: <20191210033146.GA32522@paulmck-ThinkPad-P72>
 <0e565b68-ece1-5ae6-bb5d-710163fb8893@windriver.com>
 <20191210223825.GS2889@paulmck-ThinkPad-P72>
 <54112a30-de24-f6b2-b02e-05bc7d567c57@windriver.com>
 <707801d5afc6$cac68190$605384b0$@dektech.com.au>
 <db88d33f-8e25-8859-84ec-3372a108c759@windriver.com>
 <20191211184609.GI2889@paulmck-ThinkPad-P72>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <58df887e-cfb5-37fd-6c06-d5f98449edd5@windriver.com>
Date: Thu, 12 Dec 2019 14:14:20 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191211184609.GI2889@paulmck-ThinkPad-P72>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ifHxB-009z8Z-S6
Subject: Re: [tipc-discussion] [PATCH net/tipc] Replace rcu_swap_protected()
 with rcu_replace_pointer()
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, davem@davemloft.net,
 tipc-discussion@lists.sourceforge.net, kernel-team@fb.com,
 torvalds@linux-foundation.org, mingo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On 12/12/19 2:46 AM, Paul E. McKenney wrote:
> On Wed, Dec 11, 2019 at 12:42:00PM +0800, Ying Xue wrote:
>> On 12/11/19 10:00 AM, Tuong Lien Tong wrote:
>>>>  
>>>>  	/* Move passive key if any */
>>>>  	if (key.passive) {
>>>> -		tipc_aead_rcu_swap(rx->aead[key.passive], tmp2, &rx->lock);
>>>> +		tmp2 = rcu_replace_pointer(rx->aead[key.passive], tmp2,
>>> &rx->lock);
>>> The 3rd parameter should be the lockdep condition checking instead of the
>>> spinlock's pointer i.e. "lockdep_is_held(&rx->lock)"?
>>> That's why I'd prefer to use the 'tipc_aead_rcu_swap ()' macro, which is
>>> clear & concise at least for the context here. It might be re-used later as
>>> well...
>>>
>>
>> Right. The 3rd parameter of rcu_replace_pointer() should be
>> "lockdep_is_held(&rx->lock)" instead of "&rx->lock".
> 
> Like this?

Yes, I think it's better to set the 3rd parameter of
rcu_replace_pointer() with "lockdep_is_held(&rx->lock)".

> 
> 							Thanx, Paul
> 
> ------------------------------------------------------------------------
> 
> commit 575bb4ba1b22383656760feb3d122e11656ccdfd
> Author: Paul E. McKenney <paulmck@kernel.org>
> Date:   Mon Dec 9 19:13:45 2019 -0800
> 
>     net/tipc: Replace rcu_swap_protected() with rcu_replace_pointer()
>     
>     This commit replaces the use of rcu_swap_protected() with the more
>     intuitively appealing rcu_replace_pointer() as a step towards removing
>     rcu_swap_protected().
>     
>     Link: https://lore.kernel.org/lkml/CAHk-=wiAsJLw1egFEE=Z7-GGtM6wcvtyytXZA1+BHqta4gg6Hw@mail.gmail.com/
>     Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
>     Reported-by: kbuild test robot <lkp@intel.com>
>     Signed-off-by: Paul E. McKenney <paulmck@kernel.org>
>     [ paulmck: Updated based on Ying Xue and Tuong Lien Tong feedback. ]
>     Cc: Jon Maloy <jon.maloy@ericsson.com>
>     Cc: Ying Xue <ying.xue@windriver.com>
>     Cc: "David S. Miller" <davem@davemloft.net>
>     Cc: <netdev@vger.kernel.org>
>     Cc: <tipc-discussion@lists.sourceforge.net>
> 
> diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
> index 990a872..c8c47fc 100644
> --- a/net/tipc/crypto.c
> +++ b/net/tipc/crypto.c
> @@ -257,9 +257,6 @@ static char *tipc_key_change_dump(struct tipc_key old, struct tipc_key new,
>  #define tipc_aead_rcu_ptr(rcu_ptr, lock)				\
>  	rcu_dereference_protected((rcu_ptr), lockdep_is_held(lock))
>  
> -#define tipc_aead_rcu_swap(rcu_ptr, ptr, lock)				\
> -	rcu_swap_protected((rcu_ptr), (ptr), lockdep_is_held(lock))
> -
>  #define tipc_aead_rcu_replace(rcu_ptr, ptr, lock)			\
>  do {									\
>  	typeof(rcu_ptr) __tmp = rcu_dereference_protected((rcu_ptr),	\
> @@ -1189,7 +1186,7 @@ static bool tipc_crypto_key_try_align(struct tipc_crypto *rx, u8 new_pending)
>  
>  	/* Move passive key if any */
>  	if (key.passive) {
> -		tipc_aead_rcu_swap(rx->aead[key.passive], tmp2, &rx->lock);
> +		tmp2 = rcu_replace_pointer(rx->aead[key.passive], tmp2, lockdep_is_held(&rx->lock));
>  		x = (key.passive - key.pending + new_pending) % KEY_MAX;
>  		new_passive = (x <= 0) ? x + KEY_MAX : x;
>  	}
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
