Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0ED68C14E
	for <lists+tipc-discussion@lfdr.de>; Mon,  6 Feb 2023 16:28:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pP3QI-0002yg-N3;
	Mon, 06 Feb 2023 15:28:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jmaloy@redhat.com>) id 1pP3QH-0002ya-Uo
 for tipc-discussion@lists.sourceforge.net;
 Mon, 06 Feb 2023 15:28:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QOs66As4IsvKSQJnn0YWgXi3/gsD+nJLNFIH2P2Dv6U=; b=Chk+brMpJ2KGGO8Jho/mlkWGzY
 JLUgREDhld5JLgzD0aJlXBxSd7BFuHn8CEZelEMrA5YIKomArxwK60T8DL6xsQzpNW/fkfpcXI3ZW
 aaQ7M4PInvCR0CiVXm9pfC5GGd4kRnDGW/Q/dbpGnwrkjygYoHi6dnF+8Pcam7vibNFs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QOs66As4IsvKSQJnn0YWgXi3/gsD+nJLNFIH2P2Dv6U=; b=YDhd+GWZ0QDzSzi2mbV2iLffc2
 dq/xyVg3xpgJbSWwkKSTdmts1eOHzeDU8hxnEgIQBsFcvEsPDCsoYPSOKlMKVYxKv9wYfKE8KkNCg
 dz2huSKiG3iWwtboPxswuGoLrUqVUk6eaPg+eCJJ+7r35MSWLRUefDFFQnqeHKzldUx0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pP3QB-00CfF5-B3 for tipc-discussion@lists.sourceforge.net;
 Mon, 06 Feb 2023 15:28:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1675697317;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QOs66As4IsvKSQJnn0YWgXi3/gsD+nJLNFIH2P2Dv6U=;
 b=bZAU/v+lPGLCHJOqsGVPGuktH8vJDcaY6oZREIdpSzjBt4zXV2HCp73OiuKJoZrVv32nIh
 BigoXdeVTjzmYhbeT1Fnf55wbcWz2CUqzqRi1OGO6WzlpKLQOhEaB6yJ+5QSHsBIVpe5Zt
 WslnAsfLdpdPj1swPG8vxRVVGcdABGk=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-91-ZXOw_gKGPVK_NyFyiAWCwQ-1; Mon, 06 Feb 2023 10:28:36 -0500
X-MC-Unique: ZXOw_gKGPVK_NyFyiAWCwQ-1
Received: by mail-qk1-f198.google.com with SMTP id
 x7-20020a05620a098700b007242aa494ddso8013756qkx.19
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 06 Feb 2023 07:28:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=QOs66As4IsvKSQJnn0YWgXi3/gsD+nJLNFIH2P2Dv6U=;
 b=lAD8urUBNf/v/hEO2DFbxMxIhjNiBv3lLZJRjCXxPNt245+w7Uo+q+LTHVQO1rafFE
 f/Fml/k+Ndx2eixLsAKVUpANcHje/Eg7aopBBsLneMjk24gfB1eYDvpFQ8uJZLeuXsRw
 tauECrdZ9ytknek8J0tZ9Bj1Iq5Eh2IDLsd652xZvPD1zzJzJjkawYLK6PFXwB0msH9J
 IQ1/jsaZd4kEQvwhkmHolqjo+DuxOIf7HwvQ1LIV1YqLoDASt728MM9QetOBkDsu5IW3
 xP54awBm/9WJNILlP6l7bnXQDBBYrqhnyM41qKxiCYSJkCMqRO0YDAeXU7mDPAOkdNho
 05lg==
X-Gm-Message-State: AO0yUKU07q8d/7J3qWyu9CbFWcv7sas7swJGZpGDzPyDXK5DGGWIehZQ
 WRUTwMk8vo08SPS0l7GC6o8ytkspmd+mO99xS9NWKTebRC5UR0kDb0m0vGbYufH1EG5J7d//xQ+
 JRGqA0+9RKhTF92DK6OPtblFTMqoU33OlZ1l4
X-Received: by 2002:ac8:5ac6:0:b0:3b9:b7c9:f0d1 with SMTP id
 d6-20020ac85ac6000000b003b9b7c9f0d1mr38537360qtd.39.1675697315410; 
 Mon, 06 Feb 2023 07:28:35 -0800 (PST)
X-Google-Smtp-Source: AK7set/Z3QHu3NbQerxgVHivlujZzVLjpg0fXwbpoSXYbeJFo4vOeVdwH4pwIe1UC5g2VeTh+ftpMg==
X-Received: by 2002:ac8:5ac6:0:b0:3b9:b7c9:f0d1 with SMTP id
 d6-20020ac85ac6000000b003b9b7c9f0d1mr38537327qtd.39.1675697315116; 
 Mon, 06 Feb 2023 07:28:35 -0800 (PST)
Received: from [10.0.0.97] ([24.225.241.171]) by smtp.gmail.com with ESMTPSA id
 h62-20020a37b741000000b007283b33bfbesm7529108qkf.121.2023.02.06.07.28.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Feb 2023 07:28:34 -0800 (PST)
Message-ID: <60263105-0fbc-a4ba-4032-98107b3d649d@redhat.com>
Date: Mon, 6 Feb 2023 10:28:33 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "maloy@donjonn.com" <maloy@donjonn.com>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>
References: <20230201040352.194367-1-tung.q.nguyen@dektech.com.au>
 <331eb438-e693-ed59-38f9-ac22673a5056@redhat.com>
 <DB9PR05MB907877FD5602A1D6A493336B88DA9@DB9PR05MB9078.eurprd05.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <DB9PR05MB907877FD5602A1D6A493336B88DA9@DB9PR05MB9078.eurprd05.prod.outlook.com>
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
 Content preview:  On 2023-02-05 23:11, Tung Quang Nguyen wrote: > >> 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pP3QB-00CfF5-B3
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



On 2023-02-05 23:11, Tung Quang Nguyen wrote:
>
>> -----Original Message-----
>> From: Jon Maloy <jmaloy@redhat.com>
>> Sent: Saturday, February 4, 2023 1:02 AM
>> To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; tipc-discussion@lists.sourceforge.net; maloy@donjonn.com;
>> ying.xue@windriver.com
>> Subject: Re: [tipc-discussion][PATCH v1 1/1] tipc: fix kernel warning when sending SYN message
>>
>>
>>
>> On 2023-01-31 23:03, Tung Nguyen wrote:
>>> When sending a SYN message, this kernel stack trace is observed:
>>>
>>> ...
>>> [   13.396352] RIP: 0010:_copy_from_iter+0xb4/0x550
>>> ...
>>> [   13.398494] Call Trace:
>>> [   13.398630]  <TASK>
>>> [   13.398630]  ? __alloc_skb+0xed/0x1a0
>>> [   13.398630]  tipc_msg_build+0x12c/0x670 [tipc]
>>> [   13.398630]  ? shmem_add_to_page_cache.isra.71+0x151/0x290
>>> [   13.398630]  __tipc_sendmsg+0x2d1/0x710 [tipc]
>>> [   13.398630]  ? tipc_connect+0x1d9/0x230 [tipc]
>>> [   13.398630]  ? __local_bh_enable_ip+0x37/0x80
>>> [   13.398630]  tipc_connect+0x1d9/0x230 [tipc]
>>> [   13.398630]  ? __sys_connect+0x9f/0xd0
>>> [   13.398630]  __sys_connect+0x9f/0xd0
>>> [   13.398630]  ? preempt_count_add+0x4d/0xa0
>>> [   13.398630]  ? fpregs_assert_state_consistent+0x22/0x50
>>> [   13.398630]  __x64_sys_connect+0x16/0x20
>>> [   13.398630]  do_syscall_64+0x42/0x90
>>> [   13.398630]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
>>>
>>> It is because commit a41dad905e5a ("iov_iter: saner checks for attempt to copy to/from iterator")
>>> has introduced sanity check for copying from/to iov iterator. Lacking
>>> of copy direction from the iterator viewpoint would lead to kernel
>>> stack trace like above.
>>>
>>> This commit fixes this issue by initializing the iov iterator with
>>> the correct copy direction.
>>>
>>> Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
>>> ---
>>>    net/tipc/msg.c | 4 ++++
>>>    1 file changed, 4 insertions(+)
>>>
>>> diff --git a/net/tipc/msg.c b/net/tipc/msg.c
>>> index 5c9fd4791c4b..f40cd9032b62 100644
>>> --- a/net/tipc/msg.c
>>> +++ b/net/tipc/msg.c
>>> @@ -377,10 +377,14 @@ int tipc_msg_build(struct tipc_msg *mhdr, struct msghdr *m, int offset,
>>>    	int pktno = 1;
>>>    	char *pktpos;
>>>    	int pktsz;
>>> +	struct iovec iov;
>>>    	int rc;
>>>
>>>    	msg_set_size(mhdr, msz);
>>>
>>> +	if (!dsz)
>>> +		iov_iter_init(&m->msg_iter, ITER_SOURCE, &iov, 0, 0);
>>> +
>>>    	/* No fragmentation needed? */
>>>    	if (likely(msz <= pktmax)) {
>>>    		skb = tipc_buf_acquire(msz, GFP_KERNEL);
>> I feel a little uncomfortable with adding an uninitialized struct iovec
>> here.
> It is OK not using iovec, just passing NULL to iov_iter_init: iov_iter_init(&m->msg_iter, ITER_SOURCE, NULL, 0, 0).
> My intention was to highlight the copy source and no-copy (count = 0) information.
>> Al Viro had a different proposal in his email from Dec 8th:
>>
>> On 2022-12-11 04:38, Al Viro wrote:
>>> On Thu, Dec 08, 2022 at 08:38:14PM +0100, Eric Dumazet wrote:
>>>
>>>> Exposes an old bug in tipc ?
>>>>
>>>> Seems a new check added by Al in :
>>>>
>>>> Author: Al Viro <viro@zeniv.linux.org.uk>
>>>> Date:   Thu Sep 15 20:11:15 2022 -0400
>>>>
>>>>       iov_iter: saner checks for attempt to copy to/from iterator
>>>>
>>>>       instead of "don't do it to ITER_PIPE" check for ->data_source being
>>>>       false on copying from iterator.  Check for !->data_source for
>>>>       copying to iterator, while we are at it.
>>>>
>>>>       Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>
>>> Lovely...  zero-length sendmsg with uninitialized ->msg_data...
>>>
>>> 	I would probably argue that it's a bug in tipc_connect(),
>>> fixed by iov_iter_kvec(&m.msg_iter, ITER_SOURCE, NULL, 0, 0);
>>> in there.  Depends - if that kind of uninitialized msg_iter used
>>> as zero length source or zero length destination is a frequent pattern,
>>> might as well make zero-byte copy_...iter() succeed quietly;
>>> I hope it isn't, but that's definitely something I'd missed
>>> when doing that series.
>>>
>>> 	I'll take a look tomorrow^Win the morning, after I get
>>> some sleep...
>>>
>> Did you consider that one?
> This function has the same effect as the one I used. But from the viewpoint of function
> tipc_msg_build(), we mainly want to copy data from user-space. Two exceptions are SYN and ACK- with no data. So, I think using iov_iter_init() makes more sense.
> I suggest that we go with what I did (plus passing NULL for iovec) and CC Al Viro to see if the guy has any objection.
> What do you think ?
Yes, that makes sense. Go ahead.

///jon

>> ///jon



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
