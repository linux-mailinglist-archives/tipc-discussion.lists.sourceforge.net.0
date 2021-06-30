Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 398C13B8519
	for <lists+tipc-discussion@lfdr.de>; Wed, 30 Jun 2021 16:33:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lybHO-000090-Ig; Wed, 30 Jun 2021 14:33:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lybHM-00008r-IC
 for tipc-discussion@lists.sourceforge.net; Wed, 30 Jun 2021 14:33:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Lx4yjbjYA1RAgTkqfItpqyT33uzLHMevD+qPYW/LyT0=; b=LgTq5a6em+fF0c3uwnqZjNHOJC
 R9Oxaj+JpJEeKzrc5PBUFX4NM01hwsF1qEIwNtBFjhAmBbRdXOBr+pcOmfO+4CdJCRXo4b/8lYpkn
 G3+QpirvBMUi6BwzSdvfffjij68BJ5nu7LYjX40svLILTW6C/H7DPW94rZBgs1TeIUEA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Lx4yjbjYA1RAgTkqfItpqyT33uzLHMevD+qPYW/LyT0=; b=I5L3UGDocfyC3ubcr61pJO6gOg
 0nQsxv9h0IxIZMSm1xom0fjfU9jP3ZlkFiZeTcp35CjT7GAUxsNEss+AHPk6unNUTdRYPLTNKmLkc
 maRbEsQ3ZGBLWlyETFike1vMS5f+g34ezWm/5Odcy5YeY4q8fePWEhiIh+O1CWRx5k/Y=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lybHI-0001Zb-Lz
 for tipc-discussion@lists.sourceforge.net; Wed, 30 Jun 2021 14:33:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1625063598;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Lx4yjbjYA1RAgTkqfItpqyT33uzLHMevD+qPYW/LyT0=;
 b=RGrQkKGI5Pi8YaTBJF0eFjd9HGOY86MNyrPwdQ+AqGKIRkSmI7AHLSSl9pMcxArfbVBF1D
 ra/iO/QxCkrzRg2XiEpf34IwZN0Xm2CtfMKPYGBX/voY1nrUyQJTxN3p3kLCpYqaGe4yPH
 qXRkCOxggNL7NqrZllp7up+cmHpg8Rg=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-502-E3HIRHiCNx-Dd6hckNvSkQ-1; Wed, 30 Jun 2021 10:33:17 -0400
X-MC-Unique: E3HIRHiCNx-Dd6hckNvSkQ-1
Received: by mail-qk1-f198.google.com with SMTP id
 a2-20020a05620a0662b02903ad3598ec02so1789936qkh.17
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 30 Jun 2021 07:33:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Lx4yjbjYA1RAgTkqfItpqyT33uzLHMevD+qPYW/LyT0=;
 b=k5yIZ+mUCVgs2Sv+bWqFERugo2xK/4Xu8QbIDNAUfSLn2ttdkGmiimcSMV2DdP+cU5
 py1sz/IK4t8wHZo0q49/U0rhSA04q38cNmrvZHnb4hrSmQLuf8zy8WnNUH1Ppk35lYV6
 RhNQI8/rZYgUPGTtBdEf28L17pDsAb+VYb1dzY4mEw98Zm2q7TiaikThMUuKY/+c7LFK
 NLc7z9vj1V9ox4RRgf22+5TWiv7lg4I+fUOHp3k3L8zl9xIO0bx6RR5lpBHm1U/0N4xz
 iXN/75l0/lD8n9KuGFbgYtfnGaj0ULq5AIn0clW6uXJL13FxstZONetwUsU7YG4yIhdN
 TK1A==
X-Gm-Message-State: AOAM531juA2LdoC++NdvKHAoYiKENj9frQPg3IEv1YLIIKpCwwYuXvNQ
 2+/fEtWK8NqKLzyw+XqouwQSlw4/pr1XF15tth7AcBwCnU8mkGv6ahsFIYSWwZ7GZYnXcl5HTps
 rpcuuAzJB5RP3qRL8F+1GS52J123bqPylbdCsXKuFfEdu4POrF/Akwm+ln6CDG5QEeN+xgdfNwP
 Q5iIKyzAgSeA==
X-Received: by 2002:aed:2065:: with SMTP id 92mr31218656qta.283.1625063596547; 
 Wed, 30 Jun 2021 07:33:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwLgacLIMU3l79zg7Ynq5JztpoOIpCg0tXeOUBtLiklUDuT/F2ENWAaCauQek4tRoz13ktUBw==
X-Received: by 2002:aed:2065:: with SMTP id 92mr31218638qta.283.1625063596297; 
 Wed, 30 Jun 2021 07:33:16 -0700 (PDT)
Received: from [192.168.0.104] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id d16sm10731127qtg.56.2021.06.30.07.33.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Jun 2021 07:33:15 -0700 (PDT)
To: Xin Long <lucien.xin@gmail.com>
References: <dbb8b1824d1d701ebbd513324232eddafcad835b.1624678815.git.lucien.xin@gmail.com>
 <87pmw7ytw5.fsf@e43.eu>
 <CADvbK_fWLZNMfbs9h0BPgFJPCq0DY-epENTtQsgq=-fC7Zzk0A@mail.gmail.com>
 <CADvbK_ek=-B+QFK3eTZWaNWyckv5+jRt5wsqW4vPhQoNkxcfsw@mail.gmail.com>
 <a83e4014-0298-cf22-0068-cc6d348a37d3@redhat.com>
 <CADvbK_dKHH537JY-LfnOHvpwKWhQ7vyhgqye0P7io-DVYk3r-Q@mail.gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <9f0510f1-c7c2-adf8-5d9c-e119f48c1a05@redhat.com>
Date: Wed, 30 Jun 2021 10:33:14 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CADvbK_dKHH537JY-LfnOHvpwKWhQ7vyhgqye0P7io-DVYk3r-Q@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lybHI-0001Zb-Lz
Subject: Re: [tipc-discussion] [PATCH net-next] tipc: keep the skb in rcv
 queue until the whole data is read
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
Cc: tipc-discussion@lists.sourceforge.net, Erin Shepherd <erin.shepherd@e43.eu>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net


On 29/06/2021 17:41, Xin Long wrote:
> On Tue, Jun 29, 2021 at 3:57 PM Jon Maloy <jmaloy@redhat.com> wrote:
>>
[...]
> Yes, Jon, I mean the opposite.
>
> when MSG_EOR is set, we will go with what this patch does,
> but to delete MSG_EOR if this is not the last part of the data,
> and keep MSG_EOR if this is the last part of the data.
>
> when MSG_EOR is not set, the msg will be truncated as before.

Yes, that would be a safe behavior. Is SCTP doing this?

///jon

>
>> In the first case, we don't solve any compatibility issue, if that is
>> the purpose. The programmer still has to add code to get the current
>> behavior.
>>
>> In the latter case we would be on the 100% safe side, although I have a
>> real hard time to see that this could be a real issue. Why would anybody
>> deliberately design an application for having messages truncated.
>>
>> ///jon
>>
>>
>>>> to indicate we don't want the truncating msg.
>>>>
>>>> When the msg flag returns with no MSG_EOR, it means there's more data to read.
>>>>
>>>> Thanks.
>>>>> - Erin
>>>>>
>>>>>> Signed-off-by: Xin Long <lucien.xin@gmail.com>
>>>>>> ---
>>>>>>    net/tipc/socket.c | 30 +++++++++++++++++++++---------
>>>>>>    1 file changed, 21 insertions(+), 9 deletions(-)
>>>>>>
>>>>>> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
>>>>>> index 34a97ea36cc8..504e59838b8b 100644
>>>>>> --- a/net/tipc/socket.c
>>>>>> +++ b/net/tipc/socket.c
>>>>>> @@ -1880,6 +1880,7 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
>>>>>>         bool connected = !tipc_sk_type_connectionless(sk);
>>>>>>         struct tipc_sock *tsk = tipc_sk(sk);
>>>>>>         int rc, err, hlen, dlen, copy;
>>>>>> +     struct tipc_skb_cb *skb_cb;
>>>>>>         struct sk_buff_head xmitq;
>>>>>>         struct tipc_msg *hdr;
>>>>>>         struct sk_buff *skb;
>>>>>> @@ -1903,6 +1904,7 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
>>>>>>                 if (unlikely(rc))
>>>>>>                         goto exit;
>>>>>>                 skb = skb_peek(&sk->sk_receive_queue);
>>>>>> +             skb_cb = TIPC_SKB_CB(skb);
>>>>>>                 hdr = buf_msg(skb);
>>>>>>                 dlen = msg_data_sz(hdr);
>>>>>>                 hlen = msg_hdr_sz(hdr);
>>>>>> @@ -1922,18 +1924,27 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
>>>>>>
>>>>>>         /* Capture data if non-error msg, otherwise just set return value */
>>>>>>         if (likely(!err)) {
>>>>>> -             copy = min_t(int, dlen, buflen);
>>>>>> -             if (unlikely(copy != dlen))
>>>>>> -                     m->msg_flags |= MSG_TRUNC;
>>>>>> -             rc = skb_copy_datagram_msg(skb, hlen, m, copy);
>>>>>> +             int offset = skb_cb->bytes_read;
>>>>>> +
>>>>>> +             copy = min_t(int, dlen - offset, buflen);
>>>>>> +             rc = skb_copy_datagram_msg(skb, hlen + offset, m, copy);
>>>>>> +             if (unlikely(rc))
>>>>>> +                     goto exit;
>>>>>> +             if (unlikely(offset + copy < dlen)) {
>>>>>> +                     if (!(flags & MSG_PEEK))
>>>>>> +                             skb_cb->bytes_read = offset + copy;
>>>>>> +             } else {
>>>>>> +                     m->msg_flags |= MSG_EOR;
>>>>>> +                     skb_cb->bytes_read = 0;
>>>>>> +             }
>>>>>>         } else {
>>>>>>                 copy = 0;
>>>>>>                 rc = 0;
>>>>>> -             if (err != TIPC_CONN_SHUTDOWN && connected && !m->msg_control)
>>>>>> +             if (err != TIPC_CONN_SHUTDOWN && connected && !m->msg_control) {
>>>>>>                         rc = -ECONNRESET;
>>>>>> +                     goto exit;
>>>>>> +             }
>>>>>>         }
>>>>>> -     if (unlikely(rc))
>>>>>> -             goto exit;
>>>>>>
>>>>>>         /* Mark message as group event if applicable */
>>>>>>         if (unlikely(grp_evt)) {
>>>>>> @@ -1956,9 +1967,10 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
>>>>>>                 tipc_node_distr_xmit(sock_net(sk), &xmitq);
>>>>>>         }
>>>>>>
>>>>>> -     tsk_advance_rx_queue(sk);
>>>>>> +     if (!skb_cb->bytes_read)
>>>>>> +             tsk_advance_rx_queue(sk);
>>>>>>
>>>>>> -     if (likely(!connected))
>>>>>> +     if (likely(!connected) || skb_cb->bytes_read)
>>>>>>                 goto exit;
>>>>>>
>>>>>>         /* Send connection flow control advertisement when applicable */
>>>>>> --
>>>>>> 2.27.0
>>>>>>
>>>>>>
>>>>>>
>>>>>> _______________________________________________
>>>>>> tipc-discussion mailing list
>>>>>> tipc-discussion@lists.sourceforge.net
>>>>>> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
>>> _______________________________________________
>>> tipc-discussion mailing list
>>> tipc-discussion@lists.sourceforge.net
>>> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
>>>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
