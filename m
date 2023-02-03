Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7731B68A11C
	for <lists+tipc-discussion@lfdr.de>; Fri,  3 Feb 2023 19:02:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pO0OJ-00040u-3H;
	Fri, 03 Feb 2023 18:02:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jmaloy@redhat.com>) id 1pO0OI-00040n-3O
 for tipc-discussion@lists.sourceforge.net;
 Fri, 03 Feb 2023 18:02:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Xz0WI/2iiT7U6ZM/vTRox+GvC5uxuSYF8Qu6ymBnPXQ=; b=Gu0KSui4Wd7fM9ojIgqwbIuXE7
 MAQeAuqVCnDkBJ+66N9NAX8JAyBYgLljK6Nl5Yt4vwCfWBq5CHAqk904MA4u5WAjTdbBs4qBhfh/9
 cuClXbLKBaZY+SKakcAKYZVESqQpzLz3DFAOTiyxNpErfyQPKX2MeCAuT/h4zDOdv3cU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Xz0WI/2iiT7U6ZM/vTRox+GvC5uxuSYF8Qu6ymBnPXQ=; b=fCK20bmJesdB9ncuQr3PxcCpML
 S7/IiezTK6nsba2lQ3InOS2UfC6t6QNQL7QPFKUmv5yxP7CcC8knJVMyyo9725cyqBPaPwJz5SYBN
 R8+yIRmJkpENB0tVX8VoL6TS/zvbRMZ0tSj4e0UudZ3LZQJg9ZUECRLMzkankvZBR9a8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pO0OB-0007gI-Gn for tipc-discussion@lists.sourceforge.net;
 Fri, 03 Feb 2023 18:02:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1675447334;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Xz0WI/2iiT7U6ZM/vTRox+GvC5uxuSYF8Qu6ymBnPXQ=;
 b=bo67doiareF33rQbre2ZDg/1MPTnjgrqeziuJ3W8llGlEV4cehXQ6aiIw0ywBo/6LJEXB2
 VHTBa1ulC0ugFnTrL6PF0IJlCJt8GnY+fMAtXC4UJPhr54nzttv2COKzpUmGQuljbuogyX
 N0715J+mbVYkZ2daghiwx/QECrwb0ds=
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-90-w-2rh-cTPCCThpzqUpu8vQ-1; Fri, 03 Feb 2023 13:02:10 -0500
X-MC-Unique: w-2rh-cTPCCThpzqUpu8vQ-1
Received: by mail-oo1-f71.google.com with SMTP id
 x1-20020a4a9b81000000b004dfca255b77so2105998ooj.13
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 03 Feb 2023 10:02:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Xz0WI/2iiT7U6ZM/vTRox+GvC5uxuSYF8Qu6ymBnPXQ=;
 b=NLovutyfS61kkgY/o6tm0y96iohODsXnKqHv3zmKXoc1R4KmY0Gv4hpOP6EVlJPSRF
 Uq2FCBxpx/0s5Fv5bePDLj9Bu0FYpesYIhN5BDRY8q5Qc86F1uYjRlT3Mw8e3sTamZzt
 IPRTHsKctrV5aDemhE9O7J5Vb2no677b/hR6FKaWCoGorOr8wZIau6FrO/B4Ojr+PwJl
 oYXDeOmuiqYfT4PjurobN2YSt+YfqqITd4RX+lCUFoZxYMX8XLL/TsWxtpOsMnhdMxxh
 MZp+UOLdvhJ9O5aX4Tb3E36G3cPMxskyFfcevzPoYw5qcAnJU6Pk7OvZPHirIlnLVm3I
 hIRQ==
X-Gm-Message-State: AO0yUKXUxjkZMBKSMKRCBQ6nR5vepgC9vBYWR7zWCgFxDP7pqaHGsk4p
 Mo/sfcPs9GiS7u12DleQZRrLjTEN/NbKaRVhkhXE8DZyVhz7inWyY2RioXaO2UkurYh6cBa3BYY
 TAOHQsXx/TFf4Ex5aydwJD4xPQ9LBwzrlQwZ4
X-Received: by 2002:a05:6870:6082:b0:163:b35e:40d3 with SMTP id
 t2-20020a056870608200b00163b35e40d3mr5156835oae.17.1675447329450; 
 Fri, 03 Feb 2023 10:02:09 -0800 (PST)
X-Google-Smtp-Source: AK7set9+Vig7cHCn4/REsWy9XI6huhzqsEAo/onBw88wjQk0S0kBIMHVQtO4QWgsdM5Jdfu8ySjBJw==
X-Received: by 2002:a05:6870:6082:b0:163:b35e:40d3 with SMTP id
 t2-20020a056870608200b00163b35e40d3mr5156792oae.17.1675447328903; 
 Fri, 03 Feb 2023 10:02:08 -0800 (PST)
Received: from [10.0.0.97] ([24.225.241.171]) by smtp.gmail.com with ESMTPSA id
 i8-20020a05620a248800b00727538eb831sm2291045qkn.86.2023.02.03.10.02.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Feb 2023 10:02:08 -0800 (PST)
Message-ID: <331eb438-e693-ed59-38f9-ac22673a5056@redhat.com>
Date: Fri, 3 Feb 2023 13:02:07 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: Tung Nguyen <tung.q.nguyen@dektech.com.au>,
 tipc-discussion@lists.sourceforge.net, maloy@donjonn.com,
 ying.xue@windriver.com
References: <20230201040352.194367-1-tung.q.nguyen@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <20230201040352.194367-1-tung.q.nguyen@dektech.com.au>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2023-01-31 23:03, Tung Nguyen wrote: > When sending a SYN
 message, this kernel stack trace is observed: > > ... > [ 13.396352] RIP:
 0010:_copy_from_iter+0xb4/0x550 > ... > [ 13.398494] Call Trace: [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pO0OB-0007gI-Gn
Subject: Re: [tipc-discussion] [PATCH v1 1/1] tipc: fix kernel warning when
 sending SYN message
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



On 2023-01-31 23:03, Tung Nguyen wrote:
> When sending a SYN message, this kernel stack trace is observed:
>
> ...
> [   13.396352] RIP: 0010:_copy_from_iter+0xb4/0x550
> ...
> [   13.398494] Call Trace:
> [   13.398630]  <TASK>
> [   13.398630]  ? __alloc_skb+0xed/0x1a0
> [   13.398630]  tipc_msg_build+0x12c/0x670 [tipc]
> [   13.398630]  ? shmem_add_to_page_cache.isra.71+0x151/0x290
> [   13.398630]  __tipc_sendmsg+0x2d1/0x710 [tipc]
> [   13.398630]  ? tipc_connect+0x1d9/0x230 [tipc]
> [   13.398630]  ? __local_bh_enable_ip+0x37/0x80
> [   13.398630]  tipc_connect+0x1d9/0x230 [tipc]
> [   13.398630]  ? __sys_connect+0x9f/0xd0
> [   13.398630]  __sys_connect+0x9f/0xd0
> [   13.398630]  ? preempt_count_add+0x4d/0xa0
> [   13.398630]  ? fpregs_assert_state_consistent+0x22/0x50
> [   13.398630]  __x64_sys_connect+0x16/0x20
> [   13.398630]  do_syscall_64+0x42/0x90
> [   13.398630]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
>
> It is because commit a41dad905e5a ("iov_iter: saner checks for attempt to copy to/from iterator")
> has introduced sanity check for copying from/to iov iterator. Lacking
> of copy direction from the iterator viewpoint would lead to kernel
> stack trace like above.
>
> This commit fixes this issue by initializing the iov iterator with
> the correct copy direction.
>
> Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> ---
>   net/tipc/msg.c | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/net/tipc/msg.c b/net/tipc/msg.c
> index 5c9fd4791c4b..f40cd9032b62 100644
> --- a/net/tipc/msg.c
> +++ b/net/tipc/msg.c
> @@ -377,10 +377,14 @@ int tipc_msg_build(struct tipc_msg *mhdr, struct msghdr *m, int offset,
>   	int pktno = 1;
>   	char *pktpos;
>   	int pktsz;
> +	struct iovec iov;
>   	int rc;
>   
>   	msg_set_size(mhdr, msz);
>   
> +	if (!dsz)
> +		iov_iter_init(&m->msg_iter, ITER_SOURCE, &iov, 0, 0);
> +
>   	/* No fragmentation needed? */
>   	if (likely(msz <= pktmax)) {
>   		skb = tipc_buf_acquire(msz, GFP_KERNEL);

I feel a little uncomfortable with adding an uninitialized struct iovec 
here.

Al Viro had a different proposal in his email from Dec 8th:

On 2022-12-11 04:38, Al Viro wrote:
> On Thu, Dec 08, 2022 at 08:38:14PM +0100, Eric Dumazet wrote:
>
>> Exposes an old bug in tipc ?
>>
>> Seems a new check added by Al in :
>>
>> Author: Al Viro <viro@zeniv.linux.org.uk>
>> Date:   Thu Sep 15 20:11:15 2022 -0400
>>
>>      iov_iter: saner checks for attempt to copy to/from iterator
>>
>>      instead of "don't do it to ITER_PIPE" check for ->data_source being
>>      false on copying from iterator.  Check for !->data_source for
>>      copying to iterator, while we are at it.
>>
>>      Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>
> Lovely...  zero-length sendmsg with uninitialized ->msg_data...
>
> 	I would probably argue that it's a bug in tipc_connect(),
> fixed by iov_iter_kvec(&m.msg_iter, ITER_SOURCE, NULL, 0, 0);
> in there.  Depends - if that kind of uninitialized msg_iter used
> as zero length source or zero length destination is a frequent pattern,
> might as well make zero-byte copy_...iter() succeed quietly;
> I hope it isn't, but that's definitely something I'd missed
> when doing that series.
>
> 	I'll take a look tomorrow^Win the morning, after I get
> some sleep...
>

Did you consider that one?

///jon



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
