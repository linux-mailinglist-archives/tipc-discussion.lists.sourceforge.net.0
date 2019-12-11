Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BF011A398
	for <lists+tipc-discussion@lfdr.de>; Wed, 11 Dec 2019 05:55:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ieu2D-0008El-OH; Wed, 11 Dec 2019 04:55:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1ieu2C-0008Ed-9e
 for tipc-discussion@lists.sourceforge.net; Wed, 11 Dec 2019 04:55:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X3Mj/XocFf3kevCb4FdU0U4R9uQ9tktnbueV8OohYFw=; b=cBCxFLJb2AD37Nbv4L9YMJsMbz
 kxceAaX6Lf+sTERiTezNoR5QRhKwfg9E5Tqs2L6drz2QPkd7MYidU01LoN/akrJqgWwxiyxSBgluq
 ZxeJI4EZU06Ap9TdmcfPDPqw9QzilCxbNhCTx188iyhcLAOsViHfCv4v4dgnVxKj0IgA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X3Mj/XocFf3kevCb4FdU0U4R9uQ9tktnbueV8OohYFw=; b=kQKRIuPAFPtLNwQJJqCfhEd9V4
 3WYXLF/+/kCUjISWObKvOO7QvBLzxFPFMvbIgFs0rhLpUhf1fvNkIrBZGjeTqPfdhciA2Xi8STz2M
 VY52bL8bpLOI9E10yPmDBfk2TH1QPfmmus17L/tkvuvWCrlzGkwnuoeSZe4EuudzssE4=;
Received: from mail.windriver.com ([147.11.1.11])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1ieu29-000Z6W-Mb
 for tipc-discussion@lists.sourceforge.net; Wed, 11 Dec 2019 04:55:36 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xBB4tJbv010057
 (version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
 Tue, 10 Dec 2019 20:55:19 -0800 (PST)
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 10 Dec
 2019 20:55:18 -0800
To: Tuong Lien Tong <tuong.t.lien@dektech.com.au>, <paulmck@kernel.org>
References: <20191210033146.GA32522@paulmck-ThinkPad-P72>
 <0e565b68-ece1-5ae6-bb5d-710163fb8893@windriver.com>
 <20191210223825.GS2889@paulmck-ThinkPad-P72>
 <54112a30-de24-f6b2-b02e-05bc7d567c57@windriver.com>
 <707801d5afc6$cac68190$605384b0$@dektech.com.au>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <db88d33f-8e25-8859-84ec-3372a108c759@windriver.com>
Date: Wed, 11 Dec 2019 12:42:00 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <707801d5afc6$cac68190$605384b0$@dektech.com.au>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ieu29-000Z6W-Mb
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

On 12/11/19 10:00 AM, Tuong Lien Tong wrote:
>>  
>>  	/* Move passive key if any */
>>  	if (key.passive) {
>> -		tipc_aead_rcu_swap(rx->aead[key.passive], tmp2, &rx->lock);
>> +		tmp2 = rcu_replace_pointer(rx->aead[key.passive], tmp2,
> &rx->lock);
> The 3rd parameter should be the lockdep condition checking instead of the
> spinlock's pointer i.e. "lockdep_is_held(&rx->lock)"?
> That's why I'd prefer to use the 'tipc_aead_rcu_swap ()' macro, which is
> clear & concise at least for the context here. It might be re-used later as
> well...
> 

Right. The 3rd parameter of rcu_replace_pointer() should be
"lockdep_is_held(&rx->lock)" instead of "&rx->lock".


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
